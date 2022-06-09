Class hcd.jsontohl7.Teste
{

/// Description
ClassMethod Read() As %Status
{
    Set sc = $$$OK  
    
    Set jsonContent = [
        {
            "paciId": 2965065,
            "codigo": "I10",
            "descricao": "Hipertensao essencial (primaria)",
            "dtInicio": "10/11/2014 08:30:00",
            "status": "A"
        },
        {
            "paciId": 2965065,
            "codigo": "E78.0",
            "descricao": "Hipercolesterolemia pura",
            "dtInicio": "11/03/2016 17:50:00",
            "status": "A"
        }
    ]
     
    set iter = jsonContent.%GetIterator()
    while iter.%GetNext(.key, .value, .type ) {
        Write value.paciId
        write "key = "_key_", value = "_value_", type = "_type,!
    }

    Set key=$ORDER(jsonContent(""))
    
    While (key'="") {
        Write jsonContent.%Get(key).paciId
        Set key=$ORDER(jsonContent(key))
    }


    
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

ClassMethod teste2()
{
    Set datetime = $ZDATETIME($HOROLOG,8,2)
    Set str = $ZSTRIP(datetime, "*W",":")
    Write str
}

ClassMethod teste3()
{
    Set stream=##class(%FileCharacterStream).%New()
	Set stream.Filename="/opt/user/output/paciente/10C47920-E5A9-11EC-8CDD-0242AC140002.json_2022-06-06_14.43.54.895"
    Write stream.Attributes("Filename")
}

}
