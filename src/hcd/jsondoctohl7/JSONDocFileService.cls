Class hcd.jsondoctohl7.JSONDocFileService Extends Ens.BusinessService
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
    Set req.tipoDocumento = jsonObject."0".tidoCd
    Set req.numeroDocumento = jsonObject."0".dopaDsCompl
    If jsonObject."0".dopaDtEmissao '= ""
        Set req.dataEmissao = $System.SQL.TODATE(jsonObject."0".dopaDtEmissao,"DD/MM/YYYY")
    If jsonObject."0".dopaUnfeSg '= ""
        Set req.ufEmissor = jsonObject."0".dopaUnfeSg
    If jsonObject."0".oremSigla '= ""
        Set req.siglaEmissor = jsonObject."0".oremSigla 
    
    //Send message to Message Router to eventually be put in an HL7 message
    set tSc=..SendRequestAsync("MsgRouterDoc",req)

    Quit tsc
}

}
