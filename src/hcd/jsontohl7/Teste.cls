Class hcd.jsontohl7.Teste
{

/// Description
ClassMethod Read() As %Status
{
    Set sc = $$$OK  
    
    Set pInput=##class(%FileCharacterStream).%New()
    Set pInput.Filename="/opt/irisapp/input/31395328-D538-11EC-B594-42010A991602.json"
    Set jsonContent = ""

    Set jsonContent = ""
     
    While 'pInput.AtEnd {
        Set jsonContent = jsonContent_pInput.ReadLine()
    }
    
    Set jsonObject = ##class(%DynamicAbstractObject).%FromJSON(jsonContent)

    Set req=##class(hcd.jsontohl7.JSONHL7Req).%New()

    Set req.idPaciente = jsonObject."0".id
    Set req.matricula = jsonObject."0".matricula
    Set req.dtNasc = $System.SQL.TODATE(jsonObject."0".dtNasc,"DD/MM/YYYY")

    Write req.idPaciente

    Return sc
}

/// Send files
ClassMethod Send(pDir As %String, pFileSpec As %String) As %Status
{
    Set sc = $$$OK
    Set tRS=##class(%ResultSet).%New("%Library.File:FileSet")

    Set tSC=tRS.Execute(pDir,pFileSpec)

    While tRS.Next() {
        
        Set stream=##class(%Stream.FileCharacter).%New()
        Set sc=stream.LinkToFile(tRS.Get("Name"))
        
        Set httprequest=##class(%Net.HttpRequest).%New() 
        Set httprequest.Https=0
        Set httprequest.Server="localhost"
        Set httprequest.Port=52773 
        Do httprequest.EntityBody.CopyFrom(stream)
        set tSc = httprequest.Post("/hcd/api/clinicaldata/write")
        Write tSc,!
    }
    
    Return sc
}

}
