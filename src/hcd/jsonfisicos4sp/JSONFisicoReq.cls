Class hcd.jsonfisicos4sp.JSONFisicoReq Extends Ens.Request
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

// Indicadores físicos 

Property indicadoresFisicos As array Of IndicadorFisico;

// Data de inclusao 

Property dataInclusao As %String;

// Data de liberacao 

Property dataLiberacao As %String;

// Data de alteracao 

Property dataAlteracao As %String;

Storage Default
{
<Data name="JSONFisicoReqDefaultData">
<Subscript>"JSONFisicoReq"</Subscript>
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
<Value>dataInclusao</Value>
</Value>
<Value name="6">
<Value>dataLiberacao</Value>
</Value>
<Value name="7">
<Value>dataAlteracao</Value>
</Value>
<Value name="8">
<Value>autoridade</Value>
</Value>
<Value name="9">
<Value>siglaEstabelecimento</Value>
</Value>
<Value name="10">
<Value>nomeEstabelecimento</Value>
</Value>
<Value name="11">
<Value>nomeReduzidoEstabelecimento</Value>
</Value>
</Data>
<Data name="indicadoresFisicos">
<Attribute>indicadoresFisicos</Attribute>
<Structure>subnode</Structure>
<Subscript>"hcd.jsonfisicos4sp.JSONFisicoReq.indicadoresFisicos"</Subscript>
</Data>
<DefaultData>JSONFisicoReqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
