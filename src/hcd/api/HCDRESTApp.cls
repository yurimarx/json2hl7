Class hcd.api.HCDRESTApp Extends %CSP.REST
{

Parameter CHARSET = "utf-8";

Parameter CONVERTINPUTSTREAM = 1;

Parameter CONTENTTYPE = "application/json";

Parameter Version = "1.0.0";

Parameter HandleCorsRequest = 1;

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
<!-- Server Info -->
<Route Url="/" Method="GET" Call="GetInfo" Cors="true"/>
<!-- Swagger specs -->
<Route Url="/_spec" Method="GET" Call="SwaggerSpec" />

<!-- generate text from audio file -->
<Route Url="/clinicaldata/write" Method="POST" Call="WriteClinicalData" />

<!-- query -->
<Route Url="/query" Method="POST" Call="QueryString" />


</Routes>
}

// Generate audio file from text

ClassMethod WriteClinicalData() As %Status
{
    Set tSC = $$$OK
    Set data = ##class(%DynamicArray).%FromJSON(%request.Content)
    Set folder = "trash"
    If data.%Size() > 0 { 
      If data."0".matricula '= "" {
        Set folder = "paciente/"
      } ElseIf data."0".admNr '= "" {
        Set folder = "admissao/"
      } ElseIf data."0".dopaDsCompl '= "" {
        Set folder = "documento/"
      } ElseIf data."0".comuDs '= "" {
        Set folder = "meiocomunicacao/" 
      } ElseIf data."0".docdAdmNr '= "" { 
        Set folder = "procedimento/"
      } ElseIf data."0".codigo '= "" {
        Set folder = "diagnostico/"
      } ElseIf data."0".alerDs '= "" {
        Set folder = "alergia/"
      } ElseIf data."0".vacina '= "" {
        Set folder = "vacina/"
      } ElseIf data."0".agendaSq '= "" {
        Set folder = "agenda/"
      } ElseIf data."0".pareCd '= "" {
        Set folder = "familiar/"
      } ElseIf data."0".amcvStNormal '= "" {
        Set folder = "fisico/"
      } ElseIf data."0".ammpNrPeso '= "" {
        Set folder = "medidacorpo/"
      }
      
    }
     
    set tTempFile=##class(%FileCharacterStream).%New()
    Set fileName = "/opt/user/input/"_folder_$SYSTEM.Util.CreateGUID()_".json"
    set tTempFile.Filename= fileName 
    set tSC=tTempFile.CopyFrom(%request.Content)
    set returnValue=tTempFile.%Save()
    set status = {} 
    set status.message = "OK"
    Write status.%ToJSON()    
    Quit tSC
}

ClassMethod QueryString() As %Status
{
  Set json = {}
  
  Set sentence = $ZCONVERT(%request.Content.Read(),"I","UTF8")

  Set json.content = ##class(%DynamicObject).%FromJSON(sentence)

  Set key = $ORDER(%request.Data(""))
  
  Set json.query = {}

  While (key'="") {
     Do json.query.%Set(key,%request.Data(key,1))
     Set key = $ORDER(%request.Data(key))
  }

  Write json.%ToJSON()
  
  Quit $$$OK
}

/// General information
ClassMethod GetInfo() As %Status
{
  SET version = ..#Version
  SET fmt=##class(%SYS.NLS.Format).%New("ptbw")
  
  SET info = {
    "Service": "TTS Service API",
    "version": (version),
    "Developer": "Yuri Gomes",
    "Status": "Ok",
    "Date": ($ZDATETIME($HOROLOG))
  }
  Set %response.ContentType = ..#CONTENTTYPEJSON
  Set %response.Headers("Access-Control-Allow-Origin")="*"

  Write info.%ToJSON()
  Quit $$$OK
}

ClassMethod %ProcessResult(pStatus As %Status = {$$$OK}, pResult As %DynamicObject = "") As %Status [ Internal ]
{
  #dim %response As %CSP.Response
  SET tSC = $$$OK
  IF $$$ISERR(pStatus) {
    SET %response.Status = 500
    SET tSC = ..StatusToJSON(pStatus, .tJSON)
    IF $isobject(tJSON) {
      SET pResult = tJSON
    } ELSE {
      SET pResult = { "errors": [ { "error": "Unknown error parsing status code" } ] }
    }
  } 
  ELSEIF pStatus=1 {
    IF '$isobject(pResult){
      SET pResult = {
      }
    }
  }
  ELSE {
    SET %response.Status = pStatus
    SET error = $PIECE(pStatus, " ", 2, *)
    SET pResult = {
      "error": (error)
    }
  }
  
  IF pResult.%Extends("%Library.DynamicAbstractObject") {
    WRITE pResult.%ToJSON()
  }
  ELSEIF pResult.%Extends("%JSON.Adaptor") {
    DO pResult.%JSONExport()
  }
  ELSEIF pResult.%Extends("%Stream.Object") {
    DO pResult.OutputToDevice()
  }
  
  QUIT tSC
}

ClassMethod SwaggerSpec() As %Status
{
  Set tSC = ##class(%REST.API).GetWebRESTApplication($NAMESPACE, %request.Application, .swagger)
  Do swagger.info.%Remove("x-ISC_Namespace")
  Set swagger.basePath = "/iris-tts" 
  Set swagger.info.title = "TTS Service API"
  Set swagger.info.version = "1.0"
  Set swagger.host = "localhost:52773"
  Return ..%ProcessResult($$$OK, swagger)
}

}
