Class hcd.jsoncoms4sp.JSONComFileService Extends Ens.BusinessService
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

    Set size = jsonObject.%Size()

    If size > 1 {
        Set req = ##class(hcd.jsoncoms4sp.JSONComReq).%New()

        Set req.currentDateTime = $ZSTRIP($ZDATETIME($HOROLOG,8,2), "*W",":")
        Set seq = 1
        Set req.messageId = $PIECE(pInput.Attributes("Filename"),"/",*)_"_"_seq 
        
        Set req.idPaciente = jsonObject."0".paciId
        Set req.cnes = jsonObject."0".cnes 
        Set req.codigoTipoMeioComunicacao = jsonObject."0".timcDs
        Set req.descricaoTipoMeioComunicacao = jsonObject."0".timcCd
        Set req.descricaoComunicacao = jsonObject."0".comuDs
        Set req.descricaoComunicacaoComplemento = jsonObject."0".comuDsComplemento
        
        If ..Format = "HL7" {
            Set tSc=..SendRequestAsync("MsgHL7RouterCom",req) 
        } Else {
            Set tSc=..SendRequestAsync("MsgSDARouterCom",req)
        }

        
        Set req2 = ##class(hcd.jsoncoms4sp.JSONComReq).%New()
        Set req2.currentDateTime = $ZSTRIP($ZDATETIME($HOROLOG,8,2), "*W",":")
        Set seq = 2
        Set req2.messageId = $PIECE(pInput.Attributes("Filename"),"/",*)_"_"_seq 
        
        Set req2.idPaciente = jsonObject."1".paciId
        Set req2.cnes = jsonObject."1".cnes 
        Set req2.codigoTipoMeioComunicacao = jsonObject."1".timcDs
        Set req2.descricaoTipoMeioComunicacao = jsonObject."1".timcCd
        Set req2.descricaoComunicacao2 = jsonObject."1".comuDs
        Set req2.descricaoComunicacaoComplemento = jsonObject."1".comuDsComplemento
        
        If ..Format = "HL7" {
            Set tSc=..SendRequestAsync("MsgHL7RouterCom",req) 
        } Else {
            Set tSc=..SendRequestAsync("MsgSDARouterCom",req)
        }

    } Else {
        Set iter = jsonObject.%GetIterator()

        Set seq = 1
        
        while iter.%GetNext(.key, .value, .type ) {
            
            Set req = ##class(hcd.jsoncoms4sp.JSONComReq).%New()
            Set req.currentDateTime = $ZSTRIP($ZDATETIME($HOROLOG,8,2), "*W",":")
            Set req.messageId = $PIECE(pInput.Attributes("Filename"),"/",*)_"_"_seq 
            Set seq = seq + 1
            
            Set req.idPaciente = value.paciId
            Set req.cnes = value.cnes 
            Set req.codigoTipoMeioComunicacao = value.timcDs
            Set req.descricaoTipoMeioComunicacao = value.timcCd
            Set req.descricaoComunicacao = value.comuDs
            Set req.descricaoComunicacaoComplemento = value.comuDsComplemento
            
            If ..Format = "HL7" {
                Set tSc=..SendRequestAsync("MsgHL7RouterCom",req) 
            } Else {
                Set tSc=..SendRequestAsync("MsgSDARouterCom",req)
            }

        }
    }
    
    Quit tsc
}

}
