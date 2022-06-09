Class hcd.jsondiagtohl7.JSONDiagFileService Extends Ens.BusinessService
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
        
        Set req = ##class(hcd.jsondiagtohl7.JSONDiagHL7Req).%New()
        
        Set req.currentDateTime = $ZSTRIP($ZDATETIME($HOROLOG,8,2), "*W",":")
        Set req.messageId = $PIECE(pInput.Attributes("Filename"),"/",*)_"_"_seq 
        Set seq = seq + 1
    
        Set req.idPaciente = value.paciId
        Set req.codigo = value.codigo
        Set req.descricao = value.descricao 
        If value.dtInicio '= "" {
            Set req.dataInicio = $System.SQL.TODATE(value.dtInicio,"DD/MM/YYYY")
        }
        Set req.status = value.status 

        //Send message to Message Router to eventually be put in an HL7 message
        Set tSc=..SendRequestAsync("MsgRouterDiag",req)

    }

    Quit tsc
}

}
