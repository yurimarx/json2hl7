Class hcd.jsonalergias4sp.JSONAlergiaReq Extends Ens.Request
{

// current date time

Property currentDateTime As %String;

// message id

Property messageId As %String;

// Identificador do paciente no SI3, no hospital consultado.

Property idPaciente As %Integer;

// cnes - estabelecimento de saude de origem do paciente

Property cnes As %String;

// Descrição da alergia  

Property descricaoAlergia As %String(MAXLEN = 300);

// Data de liberacao 

Property dataLiberacao As %String;

// Data de cancelamento 

Property dataCancelado As %String;

Storage Default
{
<Data name="JSONAlergiaReqDefaultData">
<Subscript>"JSONAlergiaReq"</Subscript>
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
<Value>descricaoAlergia</Value>
</Value>
<Value name="6">
<Value>dataLiberacao</Value>
</Value>
<Value name="7">
<Value>dataCancelado</Value>
</Value>
</Data>
<DefaultData>JSONAlergiaReqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
