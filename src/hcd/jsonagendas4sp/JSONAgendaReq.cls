Class hcd.jsonagendas4sp.JSONAgendaReq Extends Ens.Request
{

// current date time

Property currentDateTime As %String;

// message id

Property messageId As %String;

// cnes - estabelecimento de saude de origem do paciente

Property cnes As %String;

// Identificador do paciente no SI3, no hospital consultado.

Property idPaciente As %Integer;

// Entidade proprietaria da informacao

Property autoridade As %String;

// Sigla do estabelecimento de saúde

Property siglaEstabelecimento As %String;

// Nome completo do estabelecimento de saúde

Property nomeEstabelecimento As %String;

// Nome resumido do estabelecimento de saúde

Property nomeReduzidoEstabelecimento As %String;

// Identificador da agenda 

Property agendaSq As %Integer;

// Data/hora inicio da agenda

Property agendaDtInicio As %String;

// Data/hora fim da agenda

Property agendaDtFim As %String;

// Flag indicativo de encaixe: (V)IP, (N)ORMAL, (S) ENCAIXE

Property agendaFlEncaixe As %String(MAXLEN = 1);

// Data do agendamento

Property agendaDtAgendamento As %String;

// Nome do paciente

Property nomePaciente As %String(MAXLEN = 200);

// Data de nascimento do paciente

Property dataNascimento As %String;

// Sexo do paciente

Property tipoSexo As %String(MAXLEN = 1);

// Nome da mae do paciente

Property nomeMae As %String(MAXLEN = 200);

// Nome do responsavel

Property nomeResponsavel As %String(MAXLEN = 200);

// Grau de parentesco

Property grauParentesco As %String;

// Número do DDI comercial

Property ddiComercial As %String(MAXLEN = 5);

// Número do DDD comercial

Property dddComercial As %String(MAXLEN = 5);

// Número comercial

Property foneComercial As %String;

// Número do DDI residencial

Property ddiResidencial As %String(MAXLEN = 5);

// Número do DDD residencial

Property dddResidencial As %String(MAXLEN = 5);

// Número residencial

Property foneResidencial As %String;

// Identificador do Profissional ou equipe

Property profissionalSeq As %Integer;

// Número do Profissional ou equipe

Property numeroProfissional As %String;

// Sigla do Conselho do Profissional ou equipe

Property siglaProfissional As %String;

// Sigla da Região do Conselho

Property siglaRegiaoProfissional As %String;

// Nome do  Profissional ou equipe

Property nomeProfissional As %String(MAXLEN = 200);

// Profissional solicitante sequencial

Property profissionalSolicitanteSeq As %Integer;

// Número do conselho do profissionall solicitante

Property numeroProfissionalSolicitante As %String;

// Sigla do conselho do profissionall solicitante

Property siglaProfissionalSolicitante As %String;

// Região do conselho do profissionall solicitante

Property regiaoConselhoProfissionalSolicitante As %String;

// Nome do Profissional solicitante

Property nomeProfissionalSolicitante As %String(MAXLEN = 200);

// Nome do procedimento

Property nomeProcedimento As %String(MAXLEN = 500);

// Descrição do procedimento

Property descricaoProcedimento As %String(MAXLEN = "");

// Complemento do procedimento

Property numeroComplementoProcedimento As %Integer;

// Descrição complemento procedimento

Property descricaoComplementoProcedimento As %String(MAXLEN = "");

// Observação do procedimento

Property observacao As %String(MAXLEN = "");

// Peso paciente

Property peso As %Double;

// Altura paciente

Property altura As %Double;

// Numero carteira convenio

Property numeroCarteiraConvenio As %String;

// Validade carteira convenio

Property validadeCarteiraConvenio As %String;

// Indica se o agendamento é para teleatendimento (atendimento virtual). Valores: S (Sim) e N (Não).

Property indicadorTeleatendimento As %String(MAXLEN = 1);

// Sequencial do meio do teleatendimento

Property seqTeleatendimento As %Integer;

Storage Default
{
<Data name="JSONAgendaReqDefaultData">
<Subscript>"JSONAgendaReq"</Subscript>
<Value name="1">
<Value>currentDateTime</Value>
</Value>
<Value name="2">
<Value>messageId</Value>
</Value>
<Value name="3">
<Value>idPaciente</Value>
</Value>
<Value name="4">
<Value>cnes</Value>
</Value>
<Value name="5">
<Value>agendaSq</Value>
</Value>
<Value name="6">
<Value>agendaDtInicio</Value>
</Value>
<Value name="7">
<Value>agendaDtFim</Value>
</Value>
<Value name="8">
<Value>agendaFlEncaixe</Value>
</Value>
<Value name="9">
<Value>agendaDtAgendamento</Value>
</Value>
<Value name="10">
<Value>nomePaciente</Value>
</Value>
<Value name="11">
<Value>dataNascimento</Value>
</Value>
<Value name="12">
<Value>tipoSexo</Value>
</Value>
<Value name="13">
<Value>nomeMae</Value>
</Value>
<Value name="14">
<Value>nomeResponsavel</Value>
</Value>
<Value name="15">
<Value>grauParentesco</Value>
</Value>
<Value name="16">
<Value>ddiComercial</Value>
</Value>
<Value name="17">
<Value>dddComercial</Value>
</Value>
<Value name="18">
<Value>foneComercial</Value>
</Value>
<Value name="19">
<Value>ddiResidencial</Value>
</Value>
<Value name="20">
<Value>dddResidencial</Value>
</Value>
<Value name="21">
<Value>foneResidencial</Value>
</Value>
<Value name="22">
<Value>profissionalSeq</Value>
</Value>
<Value name="23">
<Value>numeroProfissional</Value>
</Value>
<Value name="24">
<Value>siglaProfissional</Value>
</Value>
<Value name="25">
<Value>siglaRegiaoProfissional</Value>
</Value>
<Value name="26">
<Value>nomeProfissional</Value>
</Value>
<Value name="27">
<Value>profissionalSolicitanteSeq</Value>
</Value>
<Value name="28">
<Value>numeroProfissionalSolicitante</Value>
</Value>
<Value name="29">
<Value>siglaProfissionalSolicitante</Value>
</Value>
<Value name="30">
<Value>regiaoConselhoProfissionalSolicitante</Value>
</Value>
<Value name="31">
<Value>nomeProfissionalSolicitante</Value>
</Value>
<Value name="32">
<Value>nomeProcedimento</Value>
</Value>
<Value name="33">
<Value>descricaoProcedimento</Value>
</Value>
<Value name="34">
<Value>numeroComplementoProcedimento</Value>
</Value>
<Value name="35">
<Value>descricaoComplementoProcedimento</Value>
</Value>
<Value name="36">
<Value>observacao</Value>
</Value>
<Value name="37">
<Value>peso</Value>
</Value>
<Value name="38">
<Value>altura</Value>
</Value>
<Value name="39">
<Value>numeroCarteiraConvenio</Value>
</Value>
<Value name="40">
<Value>validadeCarteiraConvenio</Value>
</Value>
<Value name="41">
<Value>indicadorTeleatendimento</Value>
</Value>
<Value name="42">
<Value>seqTeleatendimento</Value>
</Value>
<Value name="43">
<Value>autoridade</Value>
</Value>
<Value name="44">
<Value>siglaEstabelecimento</Value>
</Value>
<Value name="45">
<Value>nomeEstabelecimento</Value>
</Value>
<Value name="46">
<Value>nomeReduzidoEstabelecimento</Value>
</Value>
</Data>
<DefaultData>JSONAgendaReqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
