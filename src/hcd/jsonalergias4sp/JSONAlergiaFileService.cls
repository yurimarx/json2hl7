Class hcd.jsonalergias4sp.JSONAlergiaFileService Extends Ens.BusinessService
{

Property Format As %String(MAXLEN = 3);

Parameter ADAPTER = "EnsLib.File.InboundAdapter";

Parameter SETTINGS = "Format";

Method OnProcessInput(pInput As %FileCharacterStream, pOutput As %RegisteredObject) As %Status
{
    Set tSc=$$$OK 
    
    Set jsonContent = ""
    
    While 'pInput.AtEnd {
        Set jsonContent = jsonContent_pInput.ReadLine()
    }
    
    Set jsonObject = ##class(%DynamicAbstractObject).%FromJSON(jsonContent)

    Set iter = jsonObject.%GetIterator()

    Set seq = 1
    
    While iter.%GetNext(.key, .value ) {
        
        Set req = ##class(hcd.jsonalergias4sp.JSONAlergiaReq).%New()
        Set req.currentDateTime = $ZSTRIP($ZDATETIME($HOROLOG,8,2), "*W",":")
        Set req.messageId = $PIECE(pInput.Attributes("Filename"),"/",*)_"_"_seq 
        Set seq = seq + 1
        
        Set req.idPaciente = value.paciId 
        Set req.cnes = value.cnes

        Set req.autoridade = value.assigningAuthority
        Set req.nomeEstabelecimento = value.unfuNome
        Set req.nomeReduzidoEstabelecimento = value.unfuNomeReduz
        Set req.siglaEstabelecimento = value.unfuSigla

        Set req.descricaoAlergia = value.alerDs
        Set req.dataLiberacao = ##class(hcd.util.DateUtils).RemoveUTC(value.dtLiberacao)
        Set req.dataCancelado = ##class(hcd.util.DateUtils).RemoveUTC(value.dtCancelado)
        
        Set tSc=..SendRequestAsync("MsgSDARouterAlergia",req)
        
    }
    
    Quit tSc
}

}
