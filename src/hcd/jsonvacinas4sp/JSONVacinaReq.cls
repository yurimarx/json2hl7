Class hcd.jsonvacinas4sp.JSONVacinaReq Extends Ens.Request
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

// Descrição da alergia  

Property vacina As %String(MAXLEN = 300);

// Data base 

Property dataBase As %String;

Storage Default
{
<Data name="JSONVacinaReqDefaultData">
<Subscript>"JSONVacinaReq"</Subscript>
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
<Value>vacina</Value>
</Value>
<Value name="6">
<Value>dataBase</Value>
</Value>
<Value name="7">
<Value>autoridade</Value>
</Value>
<Value name="8">
<Value>siglaEstabelecimento</Value>
</Value>
<Value name="9">
<Value>nomeEstabelecimento</Value>
</Value>
<Value name="10">
<Value>nomeReduzidoEstabelecimento</Value>
</Value>
</Data>
<DefaultData>JSONVacinaReqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
