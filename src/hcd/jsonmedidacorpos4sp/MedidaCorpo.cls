Class hcd.jsonmedidacorpos4sp.MedidaCorpo Extends Ens.Request
{

Property idx As %Integer;

Property indicador As %String(MAXLEN = 300);

Property valorIndicador As %String(MAXLEN = 300);

Storage Default
{
<Data name="MedidaCorpoDefaultData">
<Subscript>"MedidaCorpo"</Subscript>
<Value name="1">
<Value>idx</Value>
</Value>
<Value name="2">
<Value>indicador</Value>
</Value>
<Value name="3">
<Value>valorIndicador</Value>
</Value>
</Data>
<DefaultData>MedidaCorpoDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
