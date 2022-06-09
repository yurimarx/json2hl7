Class hcd.jsondoctohl7.JSONDocFileService Extends Ens.BusinessService
{

Parameter ADAPTER = "EnsLib.File.InboundAdapter";

Method OnProcessInput(pInput As %FileCharacterStream, pOutput As %RegisteredObject) As %Status
{
    Set tsc=$$$OK
    
    Set jsonContent = ""

    Set rg = ""

    Set cns = ""

    Set cpf = ""
    
    While 'pInput.AtEnd {
        Set jsonContent = jsonContent_pInput.ReadLine()
    }
    
    Set jsonObject = ##class(%DynamicAbstractObject).%FromJSON(jsonContent)

    Set iter = jsonObject.%GetIterator()

    Set seq = 1
    
    while iter.%GetNext(.key, .value, .type ) {
        
        Set req = ##class(hcd.jsondoctohl7.JSONDocHL7Req).%New()
        
        If value.tidoCd = "CNS" {
            Set req.cns = value.dopaDsCompl
        } ElseIf value.tidoCd = "RG" {
            Set req.rg = value.dopaDsCompl
        } ElseIf value.tidoCd = "CPF" { 
            Set req.cpf = value.dopaDsCompl
        }

    
        Set req.currentDateTime = $ZSTRIP($ZDATETIME($HOROLOG,8,2), "*W",":")
        Set req.messageId = $PIECE(pInput.Attributes("Filename"),"/",*)_"_"_seq 
        Set seq = seq + 1
        
        Set req.idPaciente = value.paciId
        Set req.tipoDocumento = value.tidoCd
        Set req.numeroDocumento = value.dopaDsCompl
        If jsonObject."0".dopaDtEmissao '= ""
            Set req.dataEmissao = $System.SQL.TODATE(value.dopaDtEmissao,"DD/MM/YYYY")
        If jsonObject."0".dopaUnfeSg '= ""
            Set req.ufEmissor = value.dopaUnfeSg
        If jsonObject."0".oremSigla '= ""
            Set req.siglaEmissor = value.oremSigla 
        
        //Send message to Message Router to eventually be put in an HL7 message
        set tSc=..SendRequestAsync("MsgRouterDoc",req)

    }

    
    Quit tsc
}

}
