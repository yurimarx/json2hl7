Class hcd.jsonadms4sp.JSONAdmReq Extends Ens.Request
{

// current date time

Property currentDateTime As %String;

// message id

Property messageId As %String;

// Identificador do paciente no SI3, no hospital consultado.

Property idPaciente As %Integer;

// cnes - estabelecimento de saude de origem do paciente

Property cnes As %String;

// Data ingresso

Property dataIngresso As %String;

// Codigo instituicao admissao

Property codigoInstituicaoAdmissao As %String;

// Ano da admissao 

Property anoAdmissao As %Integer;

// Número da admissão

Property numeroAdmissao As %Integer;

// Identificador unidade funcional

Property idUnidadeFuncional As %Integer;

// Descrição da unidade funcional

Property nomeUnidadeFuncional As %String;

// Sigla unidade funcional

Property siglaUnidadeFuncional As %String;

// Centro de custo.

Property centroCusto As %String(MAXLEN = 200);

// Codigo da especialidade.

Property codigoEspecialidade As %String;

// Especialidade.

Property especialidade As %String(MAXLEN = 300);

Storage Default
{
<Data name="JSONAdmReqDefaultData">
<Subscript>"JSONAdmReq"</Subscript>
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
<Value>dataIngresso</Value>
</Value>
<Value name="6">
<Value>codigoInstituicaoAdmissao</Value>
</Value>
<Value name="7">
<Value>anoAdmissao</Value>
</Value>
<Value name="8">
<Value>numeroAdmissao</Value>
</Value>
<Value name="9">
<Value>idUnidadeFuncional</Value>
</Value>
<Value name="10">
<Value>nomeUnidadeFuncional</Value>
</Value>
<Value name="11">
<Value>siglaUnidadeFuncional</Value>
</Value>
<Value name="12">
<Value>centroCusto</Value>
</Value>
<Value name="13">
<Value>codigoEspecialidade</Value>
</Value>
<Value name="14">
<Value>especialidade</Value>
</Value>
</Data>
<DefaultData>JSONAdmReqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
