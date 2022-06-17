Class hcd.jsonprocs4sp.JSONProcFileService Extends Ens.BusinessService
{

Parameter ADAPTER = "EnsLib.File.InboundAdapter";

Method OnProcessInput(pInput As %FileCharacterStream, pOutput As %RegisteredObject) As %Status
{
    Set tsc=$$$OK
    
    Set jsonContent = ""
    
    While 'pInput.AtEnd {
        Set jsonContent = jsonContent_pInput.ReadLine()
    }
    
    Set jsonObject = ##class(%DynamicAbstractObject).%FromJSON(jsonContent)

    Set iter = jsonObject.%GetIterator()

    Set seq = 1
    
    While iter.%GetNext(.key, .value, .type ) {
        
        Set req = ##class(hcd.jsonprocs4sp.JSONProcReq).%New()
        
        Set req.currentDateTime = $ZSTRIP($ZDATETIME($HOROLOG,8,2), "*W",":")
        Set req.messageId = $PIECE(pInput.Attributes("Filename"),"/",*)_"_"_seq 
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
            Set req.conteudoArquivo = value.docdBlConteudo
        } Else {
            Set stream=##class(%Stream.GlobalBinary).%New()
            Set sc=stream.LinkToFile("/opt/user/semarquivo.pdf")
            Do ##class(HS.Util.StreamUtils).Base64Encode(stream, .outstream) 
            Set content = ""
            While 'outstream.AtEnd {
                Set content = content_outstream.Read()
            }
            Set req.conteudoArquivo = content 
        }

        Set req.conteudoArquivo = value.docdBlConteudo

        //Send message to Message Router to eventually be put in an SDA message
        set tSc=..SendRequestAsync("MsgSDARouterProc",req) 

    }

    Quit tsc
}

ClassMethod GetDateTime(Input As %String) As %TimeStamp
{
    Set date = $PIECE(Input, "T", 1)
    Set temphour = $PIECE(Input, "T", 2)
    Set hour = $PIECE(temphour, "Z", 1)
    Return $SYSTEM.SQL.Functions.TOTIMESTAMP(date_" "_hour, "YYYY-MM-DD HH:MI:SS")
}

}
