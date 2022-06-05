Class hcd.jsoncomtohl7.JSONComFileService Extends Ens.BusinessService
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

    Set req = ##class(hcd.jsondoctohl7.JSONDocHL7Req).%New()

    Set req.idPaciente = jsonObject."0".paciId
    Set req.codigoTipoMeioComunicacao = jsonObject."0".timcDs
    Set req.descricaoTipoMeioComunicacao = jsonObject."0".timcCd
    Set req.descricaoComunicacao = jsonObject."0".comuDs
    Set req.descricaoComunicacaoComplemento = jsonObject."0".comuDsComplemento
    
    //Send message to Message Router to eventually be put in an HL7 message
    set tSc=..SendRequestAsync("MsgRouterCom",req)

    Quit tsc
}

}
