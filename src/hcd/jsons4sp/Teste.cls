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

ClassMethod GetDateTime(Input As %String) As %String
{
    Set date = $PIECE(Input, "T", 1)
    Set temphour = $PIECE(Input, "T", 2)
    Set hour = $PIECE(temphour, "Z", 1)
    Return date_" "_hour
}

ClassMethod teste4()
{
 
    Set jsonContent = ""
   
    Set stream=##class(%FileCharacterStream).%New()
    
    Set stream.Filename="/opt/user/input/procedimento/B348A7E8-EB3F-11EC-8B59-0242AC140002.json"
    
    While 'stream.AtEnd {
        Set line=stream.ReadLine()
        Set jsonContent = jsonContent_line
    }

    Set jsonObject = ##class(%DynamicAbstractObject).%FromJSON(jsonContent)

    Set iter = jsonObject.%GetIterator()

    Set seq = 1
    
    While iter.%GetNext(.key, .value, .type ) {
        
        Set req = ##class(hcd.jsonproctosda.JSONProcSDAReq).%New()
        
        Set req.currentDateTime = $ZSTRIP($ZDATETIME($HOROLOG,8,2), "*W",":")
        Set req.messageId = "B348A7E8-EB3F-11EC-8B59-0242AC140002.json"_seq 
        Set seq = seq + 1
        
        Set req.idPaciente = value.paciId
        Set req.idDocumento = value.docdSq
        Set req.idInstituicao = value.docdInstCd
        Set req.anoAdmissao = value.docdAdmAno
        Set req.numeroAdmissao = value.docdAdmNr
        Set req.numeroDocumento = value.docdIdDocumento

        If value.docdDtDocumento '= "" {
            Set req.dataDocumento = ..GetDateTime(value.docdDtDocumento)
        }

        Set req.tipoDocumento = value.docdTdocCd

        Set req.tipoArquivo = value.docdTpArquivo

        Set req.codigoProfissional = value.docdCproSqResp

        Set req.nomeProfissional = value.cproNm

        Set req.numeroConselho = value.cproIdConselho

        Set req.siglaConselho = value.cproSgConselho 

        Set req.siglaRegiaoConselho = value.cproSgRegiaoConselho

        Set req.tipoAdmissao = value.docdTpAdmissao

        Set req.descricaoOrigemSolicitacao = value.docdSoriCd

        Set req.codigoOrigemSolicitacao = value.docdIdOrigem

        If value.docdDtInclusao '= "" {
            Set req.dataInclusaoDocumento = ..GetDateTime(value.docdDtInclusao)
        }
        
        Set req.loginInclusaoDocumento = value.docdLoginInclusao

        If value.docdDtLiberacao '= "" {
            Set req.dataLiberacaoDocumento = ..GetDateTime(value.docdDtLiberacao)
        }
        
        Set req.versaoDocumento = value.docdVersao

        Set req.codigoItem = value.itemItgeCd

        Set req.tipoItem = value.itemItgeTp

        Set req.nomeItem = value.itgeNm 

        If value.docdBlConteudo '= "" {
            Do ##class(HS.Util.StreamUtils).Base64Decode(value.docdBlConteudo,.tDecodedStream)
            Set req.conteudoArquivo = tDecodedStream    
        } Else {
            Set stream=##class(%GlobalBinaryStream).%New()
            Set sc=stream.LinkToFile("/opt/user/semarquivo.pdf")
            Set req.conteudoArquivo = stream
        }

        Set req.conteudoArquivo = value.docdBlConteudo
    }
}

}
