Class hcd.jsoncoms4sp.JSONComReq Extends Ens.Request
{

// current date time

Property currentDateTime As %String;

// message id

Property messageId As %String;

// Identificador do paciente no SI3, no hospital consultado.

Property idPaciente As %Integer;

// cnes - estabelecimento de saude de origem do paciente

Property cnes As %String;

// Código do tipo de meio de comunicação 

Property codigoTipoMeioComunicacao As %String(MAXLEN = 200);

// Descrição do tipo de meio de comunicação

Property descricaoTipoMeioComunicacao As %String;

// Descrição do meio de comunicação. Valor do meio de comunicação.

Property descricaoComunicacao As %String(MAXLEN = 200);

// Descrição do meio de comunicação2. Valor do meio de comunicação.

Property descricaoComunicacao2 As %String(MAXLEN = 200);

// Descrição de complemento do meio de comunicação

Property descricaoComunicacaoComplemento As %String(MAXLEN = 200);

Storage Default
{
<Data name="JSONComReqDefaultData">
<Subscript>"JSONComReq"</Subscript>
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
<Value>codigoTipoMeioComunicacao</Value>
</Value>
<Value name="6">
<Value>descricaoTipoMeioComunicacao</Value>
</Value>
<Value name="7">
<Value>descricaoComunicacao</Value>
</Value>
<Value name="8">
<Value>descricaoComunicacao2</Value>
</Value>
<Value name="9">
<Value>descricaoComunicacaoComplemento</Value>
</Value>
</Data>
<DefaultData>JSONComReqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
