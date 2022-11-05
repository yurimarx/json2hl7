Class hcd.jsonvacivida.VacividaCormobidade Extends %Persistent
{

Property IdVacinacaoComorbidade As %String(MAXLEN = 40);

Property IdVacinacao As %String(MAXLEN = 40);

Property IdComorbidade As %String(MAXLEN = 40);

Property FlagAtivo As %Boolean;

Property Descricao As %String(MAXLEN = 40);

Storage Default
{
<Data name="VacividaCormobidadeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>IdVacinacaoComorbidade</Value>
</Value>
<Value name="3">
<Value>IdVacinacao</Value>
</Value>
<Value name="4">
<Value>IdComorbidade</Value>
</Value>
<Value name="5">
<Value>FlagAtivo</Value>
</Value>
<Value name="6">
<Value>Descricao</Value>
</Value>
</Data>
<DataLocation>^hcd.jsonva5269.VacividaCor8EF0D</DataLocation>
<DefaultData>VacividaCormobidadeDefaultData</DefaultData>
<IdLocation>^hcd.jsonva5269.VacividaCor8EF0D</IdLocation>
<IndexLocation>^hcd.jsonva5269.VacividaCor8EF0I</IndexLocation>
<StreamLocation>^hcd.jsonva5269.VacividaCor8EF0S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
