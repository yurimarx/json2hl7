Class hcd.jsondocs4sp.JSONDocFileService Extends Ens.BusinessService
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
    
    while iter.%GetNext(.key, .value, .type ) {
        
        Set req = ##class(hcd.jsondocs4sp.JSONDocReq).%New()

        Set req.currentDateTime = $ZSTRIP($ZDATETIME($HOROLOG,8,2), "*W",":")
        Set req.messageId = $PIECE(pInput.Attributes("Filename"),"/",*)_"_"_seq 
        Set seq = seq + 1
        
        Set req.idPaciente = value.paciId
        Set req.cnes = value.cnes

        Set req.autoridade = value.assigningAuthority
        Set req.nomeEstabelecimento = value.unfuNome
        Set req.nomeReduzidoEstabelecimento = value.unfuNomeReduz
        Set req.siglaEstabelecimento = value.unfuSigla

        Set req.tipoDocumento = value.tidoCd
        Set req.numeroDocumento = value.dopaDsCompl
        Set req.dataEmissao = value.dopaDtEmissao
        Set req.ufEmissor = value.dopaUnfeSg
        Set req.siglaEmissor = value.oremSigla 
        
        If ..Format = "HL7" {
            Set tSc=..SendRequestAsync("MsgHL7RouterDoc",req) 
        } Else {
            Set tSc=..SendRequestAsync("MsgSDARouterDoc",req)
        }

    }
    
    Quit tsc
}

}
