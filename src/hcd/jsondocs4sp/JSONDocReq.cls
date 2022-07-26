Class hcd.jsondocs4sp.JSONDocReq Extends Ens.Request
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

// tipo de documento do paciente.

Property tipoDocumento As %String;

// Numero do documento 

Property numeroDocumento As %String(MAXLEN = 200);

// Uf do emissor do documento

Property ufEmissor As %String(MAXLEN = 200);

// Sigla do emissor do documento

Property siglaEmissor As %String(MAXLEN = 200);

// Data da emissao

Property dataEmissao As %String;

Storage Default
{
<Data name="JSONDocReqDefaultData">
<Subscript>"JSONDocReq"</Subscript>
<Value name="1">
<Value>currentDateTime</Value>
</Value>
<Value name="2">
<Value>messageId</Value>
</Value>
<Value name="3">
<Value>cnes</Value>
</Value>
<Value name="4">
<Value>idPaciente</Value>
</Value>
<Value name="5">
<Value>autoridade</Value>
</Value>
<Value name="6">
<Value>siglaEstabelecimento</Value>
</Value>
<Value name="7">
<Value>nomeEstabelecimento</Value>
</Value>
<Value name="8">
<Value>nomeReduzidoEstabelecimento</Value>
</Value>
<Value name="9">
<Value>tipoDocumento</Value>
</Value>
<Value name="10">
<Value>numeroDocumento</Value>
</Value>
<Value name="11">
<Value>ufEmissor</Value>
</Value>
<Value name="12">
<Value>siglaEmissor</Value>
</Value>
<Value name="13">
<Value>dataEmissao</Value>
</Value>
</Data>
<DefaultData>JSONDocReqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
