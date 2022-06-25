Class hcd.jsonagendas4sp.JSONAgendaFileService Extends Ens.BusinessService
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
    
    while iter.%GetNext(.key, .value, .type ) { 
        
        Set req = ##class(hcd.jsoncoms4sp.JSONComReq).%New()
        Set req.currentDateTime = $ZSTRIP($ZDATETIME($HOROLOG,8,2), "*W",":")
        Set req.messageId = $PIECE(pInput.Attributes("Filename"),"/",*)_"_"_seq 
        Set seq = seq + 1
        
        Set req.idPaciente = value.paciId 
        Set req.cnes = value.cnes
        Set req.agendaSq = value.agendaSq
        Set req.agendaDtInicio = value.agendaDtInicio
        Set req.agendaDtFim = value.agendaDtFim
        Set req.agendaFlEncaixe = value.agendaFlEncaixe
        Set req.agendaDtAgendamento = value.agendaDtAgendamento
        Set req.nomePaciente = value.agendaNmPaciente
        Set req.dataNascimento = value.agendaDtNascimento
        Set req.tipoSexo = value.agendaTpSexo
        Set req.nomeMae = value.agendaNmMae
        Set req.nomeResponsavel = value.agendaNmResp
        Set req.grauParentesco = value.agendaDsGrauPar
        Set req.ddiComercial = value.agendaNrDdiComl
        Set req.dddComercial = value.agendaNrDddComl
        Set req.foneComercial = value.agendaNrFoneComl
        Set req.ddiResidencial = value.agendaNrDdiRes
        Set req.dddResidencial = value.agendaNrDddRes
        Set req.foneResidencial = value.agendaNrFoneRes
        Set req.profissionalSeq = value.agendaCprofSq
        Set req.numeroProfissional = value.cproIdConselho
        Set req.siglaProfissional = value.cproSgConselho
        Set req.siglaRegiaoProfissional = value.cproSgRegiaoConselho
        Set req.nomeProfissional = value.cproNm
        Set req.profissionalSolicitanteSeq = value.agendaCprofSqSoli
        Set req.numeroProfissionalSolicitante = value.cproSoliIdConselho
        Set req.siglaProfissionalSolicitante = value.cproSoliSgConselho
        Set req.regiaoConselhoProfissionalSolicitante = value.cproSoliSgRegiaoConselho
        Set req.nomeProfissionalSolicitante = value.cproSoliNm
        Set req.nomeProcedimento = value.agendaProcedimento
        Set req.descricaoProcedimento = value.procedimentoDs
        Set req.numeroComplementoProcedimento = value.agendaComplProcedimento
        Set req.descricaoComplementoProcedimento = value.dsComplemento
        Set req.observacao = value.agendaObs
        Set req.peso = value.agendaPeso
        Set req.altura = value.agendaAltura
        Set req.numeroCarteiraConvenio = value.agendaNrCarteiraConvenio
        Set req.validadeCarteiraConvenio = value.agendaValidCarteiraConvenio
        Set req.indicadorTeleatendimento = value.agendaStTeleatend
        Set req.seqTeleatendimento = value.agendaMtelSq

        Set tSc=..SendRequestAsync("MsgSDARouterAgenda",req)
    }

    Quit tsc
}

}
