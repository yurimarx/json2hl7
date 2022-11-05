Class hcd.jsonvacivida.Vacivida Extends %Persistent
{

Property IdPaciente As %String(MAXLEN = 40);

Property IdVacinacao As %String(MAXLEN = 40);

Property CnsPaciente As %String(MAXLEN = 20);

Property NomePaciente As %String(MAXLEN = 200);

Property NomeMae As %String(MAXLEN = 200);

Property DataNascimento As %TimeStamp;

Property Sexo As %String(MAXLEN = 1);

Property Raca As %String(MAXLEN = 80);

Property Etnia As %String(MAXLEN = 40);

Property FlGestante As %Boolean;

Property FlPuerpera As %Boolean;

Property GrupoAtendimento As %String(MAXLEN = 400);

Property Uf As %String(MAXLEN = 200);

Property Municipio As %String(MAXLEN = 300);

Property Logradouro As %String(MAXLEN = 150);

Property NumeroLogradouro As %String(MAXLEN = 10);

Property ComplementoLogradouro As %String(MAXLEN = 100);

Property BairroLogradouro As %String(MAXLEN = 500);

Property Ddd As %String(MAXLEN = 3);

Property Telefone As %String(MAXLEN = 10);

Property CnesEstabelecimento As %String(MAXLEN = 10);

Property NomeFantasiaEstabelecimento As %String(MAXLEN = 120);

Property MunicipioEstabelecimento As %String(MAXLEN = 120);

Property Gve As %String(MAXLEN = 120);

Property CnsVacinador As %String(MAXLEN = 20);

Property NomeVacinador As %String(MAXLEN = 400);

Property DddVacinador As %String(MAXLEN = 3);

Property TelefoneVacinador As %String(MAXLEN = 10);

Property IdImunobiologico As %String(MAXLEN = 40);

Property Imunobiologico As %String(MAXLEN = 400);

Property Lote As %String(MAXLEN = 200);

Property ValidadeLote As %TimeStamp(MAXVAL = "9999-01-01 00:00:00.000", MINVAL = "0001-01-01 00:00:00.000");

Property IdDose As %String(MAXLEN = 40);

Property Dose As %String(MAXLEN = 400);

Property DoseAdicional As %String(MAXLEN = 3);

Property IdEstrategia As %String(MAXLEN = 40);

Property Estrategia As %String(MAXLEN = 400);

Property DataAplicacao As %TimeStamp;

Property DataRegistro As %TimeStamp;

Property DataAprazamento As %TimeStamp;

Property CodeDataSus As %String(MAXLEN = 2);

Property CRMComorbidade As %String(MAXLEN = 10);

Property FlagInvalido As %Boolean;

Property DataInvalido As %TimeStamp;

Property DescricaoBPC As %String(MAXLEN = 40);

Property IdRegional As %String(MAXLEN = 40);

Property DescricaoRegional As %String(MAXLEN = 40);

Property DataAtualizacao As %TimeStamp;

Property FlagAtivo As %Boolean;

Property IdUFPrimeiraDose As %String(MAXLEN = 40);

Property IdPaisPrimeiraDose As %String(MAXLEN = 40);

Property IdUFSegundaDose As %String(MAXLEN = 40);

Property IdPaisSegundaDose As %String(MAXLEN = 40);

Property FlagDoseAdicional As %String(MAXLEN = 40);

Property IdMotivoDoseAdicional As %String(MAXLEN = 40);

Property DescricaoMotivoDoseAdicional As %String(MAXLEN = 100);

Property Cormobidades As list Of hcd.jsonvacivida.VacividaCormobidade;

Property CdDoseAdicional As %Integer;

Property SendSDA As %Boolean [ InitialExpression = 0 ];

Storage Default
{
<Data name="VacividaDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>IdPaciente</Value>
</Value>
<Value name="3">
<Value>IdVacinacao</Value>
</Value>
<Value name="4">
<Value>CnsPaciente</Value>
</Value>
<Value name="5">
<Value>NomePaciente</Value>
</Value>
<Value name="6">
<Value>NomeMae</Value>
</Value>
<Value name="7">
<Value>DataNascimento</Value>
</Value>
<Value name="8">
<Value>Sexo</Value>
</Value>
<Value name="9">
<Value>Raca</Value>
</Value>
<Value name="10">
<Value>Etnia</Value>
</Value>
<Value name="11">
<Value>FlGestante</Value>
</Value>
<Value name="12">
<Value>FlPuerpera</Value>
</Value>
<Value name="13">
<Value>GrupoAtendimento</Value>
</Value>
<Value name="14">
<Value>Uf</Value>
</Value>
<Value name="15">
<Value>Municipio</Value>
</Value>
<Value name="16">
<Value>Logradouro</Value>
</Value>
<Value name="17">
<Value>NumeroLogradouro</Value>
</Value>
<Value name="18">
<Value>ComplementoLogradouro</Value>
</Value>
<Value name="19">
<Value>BairroLogradouro</Value>
</Value>
<Value name="20">
<Value>Ddd</Value>
</Value>
<Value name="21">
<Value>Telefone</Value>
</Value>
<Value name="22">
<Value>CnesEstabelecimento</Value>
</Value>
<Value name="23">
<Value>NomeFantasiaEstabelecimento</Value>
</Value>
<Value name="24">
<Value>MunicipioEstabelecimento</Value>
</Value>
<Value name="25">
<Value>Gve</Value>
</Value>
<Value name="26">
<Value>CnsVacinador</Value>
</Value>
<Value name="27">
<Value>NomeVacinador</Value>
</Value>
<Value name="28">
<Value>DddVacinador</Value>
</Value>
<Value name="29">
<Value>TelefoneVacinador</Value>
</Value>
<Value name="30">
<Value>IdImunobiologico</Value>
</Value>
<Value name="31">
<Value>Imunobiologico</Value>
</Value>
<Value name="32">
<Value>Lote</Value>
</Value>
<Value name="33">
<Value>ValidadeLote</Value>
</Value>
<Value name="34">
<Value>IdDose</Value>
</Value>
<Value name="35">
<Value>Dose</Value>
</Value>
<Value name="36">
<Value>DoseAdicional</Value>
</Value>
<Value name="37">
<Value>IdEstrategia</Value>
</Value>
<Value name="38">
<Value>Estrategia</Value>
</Value>
<Value name="39">
<Value>DataAplicacao</Value>
</Value>
<Value name="40">
<Value>DataRegistro</Value>
</Value>
<Value name="41">
<Value>DataAprazamento</Value>
</Value>
<Value name="42">
<Value>CodeDataSus</Value>
</Value>
<Value name="43">
<Value>CRMComorbidade</Value>
</Value>
<Value name="44">
<Value>FlagInvalido</Value>
</Value>
<Value name="45">
<Value>DataInvalido</Value>
</Value>
<Value name="46">
<Value>DescricaoBPC</Value>
</Value>
<Value name="47">
<Value>IdRegional</Value>
</Value>
<Value name="48">
<Value>DescricaoRegional</Value>
</Value>
<Value name="49">
<Value>DataAtualizacao</Value>
</Value>
<Value name="50">
<Value>FlagAtivo</Value>
</Value>
<Value name="51">
<Value>IdUFPrimeiraDose</Value>
</Value>
<Value name="52">
<Value>IdPaisPrimeiraDose</Value>
</Value>
<Value name="53">
<Value>IdUFSegundaDose</Value>
</Value>
<Value name="54">
<Value>IdPaisSegundaDose</Value>
</Value>
<Value name="55">
<Value>FlagDoseAdicional</Value>
</Value>
<Value name="56">
<Value>IdMotivoDoseAdicional</Value>
</Value>
<Value name="57">
<Value>DescricaoMotivoDoseAdicional</Value>
</Value>
<Value name="58">
<Value>Cormobidades</Value>
</Value>
<Value name="59">
<Value>CdDoseAdicional</Value>
</Value>
<Value name="60">
<Value>SendSDA</Value>
</Value>
</Data>
<DataLocation>^hcd.jsonvacivida.VacividaD</DataLocation>
<DefaultData>VacividaDefaultData</DefaultData>
<IdLocation>^hcd.jsonvacivida.VacividaD</IdLocation>
<IndexLocation>^hcd.jsonvacivida.VacividaI</IndexLocation>
<StreamLocation>^hcd.jsonvacivida.VacividaS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
