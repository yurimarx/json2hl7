Class hcd.jsondoctohl7.JSONDocHL7Req Extends Ens.Request
{

// current date time

Property currentDateTime As %String;

// message id

Property messageId As %String;

// Identificador do paciente no SI3, no hospital consultado.

Property idPaciente As %Integer;

// tipo de documento do paciente.

Property tipoDocumento As %String;

// Numero do documento 

Property numeroDocumento As %String(MAXLEN = 200);

// Uf do emissor do documento

Property ufEmissor As %String(MAXLEN = 200);

// Sigla do emissor do documento

Property siglaEmissor As %String(MAXLEN = 200);

// Data da emissao

Property dataEmissao As %Date;

// RG 

Property rg As %String;

// CPF 

Property cpf As %String;

// CNS 

Property cns As %String;

Storage Default
{
<Data name="JSONDocHL7ReqDefaultData">
<Subscript>"JSONDocHL7Req"</Subscript>
<Value name="1">
<Value>idPaciente</Value>
</Value>
<Value name="2">
<Value>tipoDocumento</Value>
</Value>
<Value name="3">
<Value>numeroDocumento</Value>
</Value>
<Value name="4">
<Value>ufEmissor</Value>
</Value>
<Value name="5">
<Value>siglaEmissor</Value>
</Value>
<Value name="6">
<Value>dataEmissao</Value>
</Value>
<Value name="7">
<Value>currentDateTime</Value>
</Value>
<Value name="8">
<Value>messageId</Value>
</Value>
<Value name="9">
<Value>rg</Value>
</Value>
<Value name="10">
<Value>cpf</Value>
</Value>
<Value name="11">
<Value>cns</Value>
</Value>
</Data>
<DefaultData>JSONDocHL7ReqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
