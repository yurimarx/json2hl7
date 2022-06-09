Class hcd.jsonadmtohl7.JSONAdmFileService Extends Ens.BusinessService
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
    
    while iter.%GetNext(.key, .value, .type ) {
        Set req = ##class(hcd.jsonadmtohl7.JSONAdmHL7Req).%New()
        Set req.idPaciente = value.paciId
        Set req.anoAdmissao = value.admAno
        Set req.numeroAdmissao = value.admNr 
        If value.dtIngresso '= "" {
            Set req.dataIngresso = $System.SQL.TODATE(value.dtIngresso,"DD/MM/YYYY")
        }
        Set req.centroCusto = value.centroDeCusto 
        Set req.codigoEspecialidade = value.especialidadeCd 
        Set req.especialidade = value.especialidade 

        //Send message to Message Router to eventually be put in an HL7 message
        Set tSc=..SendRequestAsync("MsgRouterAdm",req) 

    }

    Quit tsc
}

}
