Class hcd.jsonvacivida.VacividaReq Extends Ens.Request
{

Property IdPaciente As %String(MAXLEN = 40);

Property IdVacinacao As %String(MAXLEN = 40);

Property CnsPaciente As %String(MAXLEN = 20);

Property NomePaciente As %String(MAXLEN = 200);

Property NomeMae As %String(MAXLEN = 200);

Property DataNascimento As %String;

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

Property ValidadeLote As %String;

Property IdDose As %String(MAXLEN = 40);

Property Dose As %String(MAXLEN = 400);

Property DoseAdicional As %String(MAXLEN = 3);

Property IdEstrategia As %String(MAXLEN = 40);

Property Estrategia As %String(MAXLEN = 400);

Property DataAplicacao As %String;

Property DataRegistro As %String;

Property DataAprazamento As %String;

Property CodeDataSus As %String(MAXLEN = 2);

Property CRMComorbidade As %String(MAXLEN = 10);

Property FlagInvalido As %Boolean;

Property DataInvalido As %String;

Property DescricaoBPC As %String(MAXLEN = 40);

Property IdRegional As %String(MAXLEN = 40);

Property DescricaoRegional As %String(MAXLEN = 40);

Property DataAtualizacao As %String;

Property FlagAtivo As %Boolean;

Property IdUFPrimeiraDose As %String(MAXLEN = 40);

Property IdPaisPrimeiraDose As %String(MAXLEN = 40);

Property IdUFSegundaDose As %String(MAXLEN = 40);

Property IdPaisSegundaDose As %String(MAXLEN = 40);

Property FlagDoseAdicional As %String(MAXLEN = 40);

Property IdMotivoDoseAdicional As %String(MAXLEN = 40);

Property DescricaoMotivoDoseAdicional As %String(MAXLEN = 100);

Property CdDoseAdicional As %Integer;

Storage Default
{
<Data name="VacividaReqDefaultData">
<Subscript>"VacividaReq"</Subscript>
<Value name="1">
<Value>IdPaciente</Value>
</Value>
<Value name="2">
<Value>IdVacinacao</Value>
</Value>
<Value name="3">
<Value>CnsPaciente</Value>
</Value>
<Value name="4">
<Value>NomePaciente</Value>
</Value>
<Value name="5">
<Value>NomeMae</Value>
</Value>
<Value name="6">
<Value>DataNascimento</Value>
</Value>
<Value name="7">
<Value>Sexo</Value>
</Value>
<Value name="8">
<Value>Raca</Value>
</Value>
<Value name="9">
<Value>Etnia</Value>
</Value>
<Value name="10">
<Value>FlGestante</Value>
</Value>
<Value name="11">
<Value>FlPuerpera</Value>
</Value>
<Value name="12">
<Value>GrupoAtendimento</Value>
</Value>
<Value name="13">
<Value>Uf</Value>
</Value>
<Value name="14">
<Value>Municipio</Value>
</Value>
<Value name="15">
<Value>Logradouro</Value>
</Value>
<Value name="16">
<Value>NumeroLogradouro</Value>
</Value>
<Value name="17">
<Value>ComplementoLogradouro</Value>
</Value>
<Value name="18">
<Value>BairroLogradouro</Value>
</Value>
<Value name="19">
<Value>Ddd</Value>
</Value>
<Value name="20">
<Value>Telefone</Value>
</Value>
<Value name="21">
<Value>CnesEstabelecimento</Value>
</Value>
<Value name="22">
<Value>NomeFantasiaEstabelecimento</Value>
</Value>
<Value name="23">
<Value>MunicipioEstabelecimento</Value>
</Value>
<Value name="24">
<Value>Gve</Value>
</Value>
<Value name="25">
<Value>CnsVacinador</Value>
</Value>
<Value name="26">
<Value>NomeVacinador</Value>
</Value>
<Value name="27">
<Value>DddVacinador</Value>
</Value>
<Value name="28">
<Value>TelefoneVacinador</Value>
</Value>
<Value name="29">
<Value>IdImunobiologico</Value>
</Value>
<Value name="30">
<Value>Imunobiologico</Value>
</Value>
<Value name="31">
<Value>Lote</Value>
</Value>
<Value name="32">
<Value>ValidadeLote</Value>
</Value>
<Value name="33">
<Value>IdDose</Value>
</Value>
<Value name="34">
<Value>Dose</Value>
</Value>
<Value name="35">
<Value>DoseAdicional</Value>
</Value>
<Value name="36">
<Value>IdEstrategia</Value>
</Value>
<Value name="37">
<Value>Estrategia</Value>
</Value>
<Value name="38">
<Value>DataAplicacao</Value>
</Value>
<Value name="39">
<Value>DataRegistro</Value>
</Value>
<Value name="40">
<Value>DataAprazamento</Value>
</Value>
<Value name="41">
<Value>CodeDataSus</Value>
</Value>
<Value name="42">
<Value>CRMComorbidade</Value>
</Value>
<Value name="43">
<Value>FlagInvalido</Value>
</Value>
<Value name="44">
<Value>DataInvalido</Value>
</Value>
<Value name="45">
<Value>DescricaoBPC</Value>
</Value>
<Value name="46">
<Value>IdRegional</Value>
</Value>
<Value name="47">
<Value>DescricaoRegional</Value>
</Value>
<Value name="48">
<Value>DataAtualizacao</Value>
</Value>
<Value name="49">
<Value>FlagAtivo</Value>
</Value>
<Value name="50">
<Value>IdUFPrimeiraDose</Value>
</Value>
<Value name="51">
<Value>IdPaisPrimeiraDose</Value>
</Value>
<Value name="52">
<Value>IdUFSegundaDose</Value>
</Value>
<Value name="53">
<Value>IdPaisSegundaDose</Value>
</Value>
<Value name="54">
<Value>FlagDoseAdicional</Value>
</Value>
<Value name="55">
<Value>IdMotivoDoseAdicional</Value>
</Value>
<Value name="56">
<Value>DescricaoMotivoDoseAdicional</Value>
</Value>
<Value name="57">
<Value>CdDoseAdicional</Value>
</Value>
</Data>
<DefaultData>VacividaReqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
