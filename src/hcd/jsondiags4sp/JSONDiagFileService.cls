Class hcd.jsondiags4sp.JSONDiagFileService Extends Ens.BusinessService
{

Property Format As %String(MAXLEN = 3);

Parameter ADAPTER = "EnsLib.File.InboundAdapter";

Parameter SETTINGS = "Format";

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
        
        Set req = ##class(hcd.jsondiags4sp.JSONDiagReq).%New()
        
        Set req.currentDateTime = $ZSTRIP($ZDATETIME($HOROLOG,8,2), "*W",":")
        Set req.messageId = $PIECE(pInput.Attributes("Filename"),"/",*)_"_"_seq 
        Set seq = seq + 1
    
        Set req.idPaciente = value.paciId
        Set req.cnes = value.cnes

        Set req.autoridade = value.assigningAuthority
        Set req.nomeEstabelecimento = value.unfuNome
        Set req.nomeReduzidoEstabelecimento = value.unfuNomeReduz
        Set req.siglaEstabelecimento = value.unfuSigla

        Set req.codigo = value.codigo
        Set req.descricao = value.descricao 
        Set req.dataInicio = ##class(hcd.util.DateUtils).ConvertDatetime(value.dtInicio)
        Set req.status = value.status

        If ..Format = "HL7" {
            Set tSc=..SendRequestAsync("MsgHL7RouterDiag",req) 
        } Else {
            Set tSc=..SendRequestAsync("MsgSDARouterDiag",req)
        }
    }
    
    Quit tsc
}

}
