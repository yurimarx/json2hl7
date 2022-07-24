Class hcd.jsonfamiliars4sp.JSONFamiliarReq Extends Ens.Request
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

// Indicador de Parentesco 

Property indicadorParentesco As %Integer;

// Parentesco

Property parentesco As %String;

// Identificador do Antecedente

Property identificadorAntecedente As %Integer;

// Codigo do antecedente

Property codigoAntecedente As %String;

// Descricao antecedente

Property descricaoAntecedente As %String(MAXLEN = "");

// Sequencia do registro de antecedencia

Property antecedenciaSeq As %Integer;

// Idade do parente

Property idadeParente As %Integer;

// Descricao de outros

Property descricaoOutros As %String(MAXLEN = 300);

// Motivo de retirada ou cancelamento

Property motivoRetiradaCancelamento As %String(MAXLEN = 300);

// Data de inclusao 

Property dataInclusao As %String;

// Data de liberacao 

Property dataLiberacao As %String;

// Data de cancelamento 

Property dataCancelado As %String;

// Data de alteracao 

Property dataAlteracao As %String;

Storage Default
{
<Data name="JSONFamiliarReqDefaultData">
<Subscript>"JSONFamiliarReq"</Subscript>
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
<Value>indicadorParentesco</Value>
</Value>
<Value name="6">
<Value>parentesco</Value>
</Value>
<Value name="7">
<Value>identificadorAntecedente</Value>
</Value>
<Value name="8">
<Value>codigoAntecedente</Value>
</Value>
<Value name="9">
<Value>descricaoAntecedente</Value>
</Value>
<Value name="10">
<Value>antecedenciaSeq</Value>
</Value>
<Value name="11">
<Value>idadeParente</Value>
</Value>
<Value name="12">
<Value>descricaoOutros</Value>
</Value>
<Value name="13">
<Value>motivoRetiradaCancelamento</Value>
</Value>
<Value name="14">
<Value>dataInclusao</Value>
</Value>
<Value name="15">
<Value>dataLiberacao</Value>
</Value>
<Value name="16">
<Value>dataCancelado</Value>
</Value>
<Value name="17">
<Value>dataAlteracao</Value>
</Value>
<Value name="18">
<Value>autoridade</Value>
</Value>
<Value name="19">
<Value>siglaEstabelecimento</Value>
</Value>
<Value name="20">
<Value>nomeEstabelecimento</Value>
</Value>
<Value name="21">
<Value>nomeReduzidoEstabelecimento</Value>
</Value>
</Data>
<DefaultData>JSONFamiliarReqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
