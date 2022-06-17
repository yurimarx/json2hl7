Class hcd.jsonadms4sp.JSONAdmFileService Extends Ens.BusinessService
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
    
    while iter.%GetNext(.key, .value, .type ) {
        Set req = ##class(hcd.jsonadms4sp.JSONAdmReq).%New()
        Set req.idPaciente = value.paciId
        Set req.anoAdmissao = value.admAno
        Set req.numeroAdmissao = value.admNr 
        If value.dtIngresso '= "" {
            Set req.dataIngresso = $System.SQL.TODATE(value.dtIngresso,"DD/MM/YYYY")
        }
        Set req.centroCusto = value.centroDeCusto 
        Set req.codigoEspecialidade = value.especialidadeCd 
        Set req.especialidade = value.especialidade 

        If ..Format = "HL7" {
            Set tSc=..SendRequestAsync("MsgHL7RouterAdm",req) 
        } Else {
            Set tSc=..SendRequestAsync("MsgSDARouterAdm",req)
        }

    }

    Quit tsc
}

}
