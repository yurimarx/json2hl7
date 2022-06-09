Class hcd.jsondiagtohl7.JSONDiagHL7Req Extends Ens.Request
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
<Data name="JSONDiagHL7ReqDefaultData">
<Subscript>"JSONDiagHL7Req"</Subscript>
<Value name="1">
<Value>idPaciente</Value>
</Value>
<Value name="2">
<Value>codigo</Value>
</Value>
<Value name="3">
<Value>descricao</Value>
</Value>
<Value name="4">
<Value>dataInicio</Value>
</Value>
<Value name="5">
<Value>status</Value>
</Value>
<Value name="6">
<Value>currentDateTime</Value>
</Value>
<Value name="7">
<Value>messageId</Value>
</Value>
</Data>
<DefaultData>JSONDiagHL7ReqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
