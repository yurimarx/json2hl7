Class hcd.jsondiags4sp.JSONDiagReq Extends Ens.Request
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

// Código do diagnóstico 

Property codigo As %String(MAXLEN = 200);

// Descrição do diagnóstico

Property descricao As %String(MAXLEN = 400);

// Data de inicio do diagnostico

Property dataInicio As %String;

// Código de status do diagnostico com uma letra.

Property status As %String;

Storage Default
{
<Data name="JSONDiagReqDefaultData">
<Subscript>"JSONDiagReq"</Subscript>
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
<Value>codigo</Value>
</Value>
<Value name="6">
<Value>descricao</Value>
</Value>
<Value name="7">
<Value>dataInicio</Value>
</Value>
<Value name="8">
<Value>status</Value>
</Value>
<Value name="9">
<Value>autoridade</Value>
</Value>
<Value name="10">
<Value>siglaEstabelecimento</Value>
</Value>
<Value name="11">
<Value>nomeEstabelecimento</Value>
</Value>
<Value name="12">
<Value>nomeReduzidoEstabelecimento</Value>
</Value>
</Data>
<DefaultData>JSONDiagReqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
