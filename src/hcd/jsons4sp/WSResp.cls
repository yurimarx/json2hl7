Class hcd.jsons4sp.WSResp Extends Ens.Response
{

Property content As %String(MAXLEN = "");

Storage Default
{
<Data name="WSRespDefaultData">
<Subscript>"WSResp"</Subscript>
<Value name="1">
<Value>content</Value>
</Value>
</Data>
<DefaultData>WSRespDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
