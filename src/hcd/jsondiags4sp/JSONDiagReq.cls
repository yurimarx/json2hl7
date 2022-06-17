Class hcd.jsondiags4sp.JSONDiagReq Extends Ens.Request
{

// current date time

Property currentDateTime As %String;

// message id

Property messageId As %String;

// Identificador do paciente no SI3, no hospital consultado.

Property idPaciente As %Integer;

// Código do diagnóstico 

Property codigo As %String(MAXLEN = 200);

// Descrição do diagnóstico

Property descricao As %String(MAXLEN = 400);

// Data de inicio do diagnostico

Property dataInicio As %Date;

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
<Value>codigo</Value>
</Value>
<Value name="5">
<Value>descricao</Value>
</Value>
<Value name="6">
<Value>dataInicio</Value>
</Value>
<Value name="7">
<Value>status</Value>
</Value>
</Data>
<DefaultData>JSONDiagReqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
