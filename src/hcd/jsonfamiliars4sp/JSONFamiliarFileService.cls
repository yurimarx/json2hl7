Class hcd.jsonfamiliars4sp.JSONFamiliarFileService Extends Ens.BusinessService
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
        
        Set req = ##class(hcd.jsonfamiliars4sp.JSONFamiliarReq).%New()
        Set req.currentDateTime = $ZSTRIP($ZDATETIME($HOROLOG,8,2), "*W",":")
        Set req.messageId = $PIECE(pInput.Attributes("Filename"),"/",*)_"_"_seq 
        Set seq = seq + 1
        
        Set req.idPaciente = value.paciId 
        Set req.cnes = value.cnes 
        Set req.indicadorParentesco = value.anfaPareSq
        Set req.parentesco = value.pareCd
        Set req.identificadorAntecedente = value.anfaAnteSq 
        Set req.codigoAntecedente = value.anteCd 
        Set req.descricaoAntecedente = value.anteDs 
        Set req.antecedenciaSeq = value.anfaSq
        Set req.idadeParente = value.anfaNrIdade
        Set req.descricaoOutros = value.anfaDsOutros
        Set req.motivoRetiradaCancelamento = value.anfaTxMotivoRetirada
        Set req.dataInclusao = value.anfaDtInclusao 
        Set req.dataLiberacao = value.anfaDtLiberacao 
        Set req.dataCancelado = value.anfaDtCancelado 
        Set req.dataAlteracao = value.anfaDtAlteracao  
        
        Set tSc=..SendRequestAsync("MsgSDARouterFamiliar",req)
        
    }
    
    Quit tSc
}

}
