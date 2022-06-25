Class hcd.jsonpacs4sp.JSONPacReq Extends Ens.Request
{

// current date time

Property currentDateTime As %String;

// message id

Property messageId As %String;

// cnes - estabelecimento de saude de origem do paciente

Property cnes As %String;

// Identificador do paciente no SI3, no hospital consultado.

Property idPaciente As %Integer;

// Matricula do paciente no SI3, no hospital consultado.

Property matricula As %String;

// Nome do Paciente - given name

Property nome As %String(MAXLEN = 200);

// Sobrenome do Paciente - surname

Property sobrenome As %String(MAXLEN = 200);

// Nome da familia do Paciente - family name

Property nomeFamilia As %String(MAXLEN = 200);

// Nome social do paciente

Property nomeSocial As %String(MAXLEN = 200);

// Data de nascimento do paciente

Property dtNasc As %String;

// Tipo de sexo do paciente representado por uma letra maiúscula. Ex: M, F...

Property tpSexo As %String;

// Sexo do paciente. 

Property sexo As %String;

// Pais de origem do paciente.

Property origem As %String;

// Estado de origem do paciente

Property uf As %String;

// Identificador do município do paciente

Property muniSq As %Integer;

// Município do paciente

Property muniDs As %String;

// Município do paciente

Property naturalidade As %String;

// Nome da mãe do paciente

Property mae As %String;

// Nome do pai do paciente

Property pai As %String;

// Nome de cônjuge do paciente

Property conjuge As %String(MAXLEN = 200);

// Nome do responsável pelo paciente

Property responsavel As %String(MAXLEN = 200);

// Identificador da etnia

Property padeGretSq As %Integer;

// Descrição de etnia do paciente

Property etinia As %String;

// Identificador de detalhe de etnia

Property padeEtdeSq As %Integer;

// Detalhe de etnia

Property etniaDetalhe As %String;

// Identificador de religião

Property padeReliSq As %Integer;

// Religião do paciente

Property religiao As %String;

// Identificador de estado civil

Property padeEsciSq As %Integer;

// Estado civil

Property estadoCivil As %String;

// Identificador de ocupação

Property padeOcupSq As %Integer;

// Ocupação do paciente

Property ocupacao As %String(MAXLEN = 500);

// Identificador de situação familiar

Property padeSifaSq As %Integer;

// Situação familiar do paciente

Property situacaoFamiliar As %String(MAXLEN = 500);

// Identificador de escolaridade do paciente

Property padeEcldSq As %Integer;

// Escolaridade do paciente

Property escolaridade As %String;

// Tipo de endereço do paciente. RES, Residencial, e tal.

Property endeTpEndereco As %String;

// Identificador do endereço

Property endeTienSq As %Integer;

// CEP do endereço

Property endeCep As %String;

// Código do tipo de logradouro

Property endeTiloCd As %String;

// Tipo de logradouro

Property endeTpLogradouro As %String;

// Logradouro do endereço

Property endeNmLogr As %String(MAXLEN = 200);

// Número do endereço (Imóvel)

Property endeNrImovel As %String;

// Complemento do endereço

Property endeComplemento As %String(MAXLEN = 200);

// Identificador de país do endereço 

Property endePaisSq As %Integer;

// País do endereço

Property endePaisDs As %String;

// Estado do endereço

Property endeUf As %String;

// Estado do endereço. Nome completo do estado do endereço

Property endeUnfeDs As %String;

// Identificador do município do endereço.

Property endeMuniSq As %Integer;

// Município do endereço. Descrição do município do endereço.

Property endeMuniDs As %String(MAXLEN = 200);

// Código IBGE do município do endereço

Property endeMuniCdIbge As %String;

// Identificador do distrito do endereço

Property endeDistSq As %Integer;

// Descrição do distrito do endereço

Property endeDistDs As %String(MAXLEN = 200);

// Nome do bairro do endereço

Property endeNmBairro As %String;

// Descrição do ponto de referencia do endereço

Property endeDsPontoRef As %String(MAXLEN = 300);

Storage Default
{
<Data name="JSONPacReqDefaultData">
<Subscript>"JSONPacReq"</Subscript>
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
<Value>matricula</Value>
</Value>
<Value name="6">
<Value>nome</Value>
</Value>
<Value name="7">
<Value>sobrenome</Value>
</Value>
<Value name="8">
<Value>nomeFamilia</Value>
</Value>
<Value name="9">
<Value>nomeSocial</Value>
</Value>
<Value name="10">
<Value>dtNasc</Value>
</Value>
<Value name="11">
<Value>tpSexo</Value>
</Value>
<Value name="12">
<Value>sexo</Value>
</Value>
<Value name="13">
<Value>origem</Value>
</Value>
<Value name="14">
<Value>uf</Value>
</Value>
<Value name="15">
<Value>muniSq</Value>
</Value>
<Value name="16">
<Value>muniDs</Value>
</Value>
<Value name="17">
<Value>naturalidade</Value>
</Value>
<Value name="18">
<Value>mae</Value>
</Value>
<Value name="19">
<Value>pai</Value>
</Value>
<Value name="20">
<Value>conjuge</Value>
</Value>
<Value name="21">
<Value>responsavel</Value>
</Value>
<Value name="22">
<Value>padeGretSq</Value>
</Value>
<Value name="23">
<Value>etinia</Value>
</Value>
<Value name="24">
<Value>padeEtdeSq</Value>
</Value>
<Value name="25">
<Value>etniaDetalhe</Value>
</Value>
<Value name="26">
<Value>padeReliSq</Value>
</Value>
<Value name="27">
<Value>religiao</Value>
</Value>
<Value name="28">
<Value>padeEsciSq</Value>
</Value>
<Value name="29">
<Value>estadoCivil</Value>
</Value>
<Value name="30">
<Value>padeOcupSq</Value>
</Value>
<Value name="31">
<Value>ocupacao</Value>
</Value>
<Value name="32">
<Value>padeSifaSq</Value>
</Value>
<Value name="33">
<Value>situacaoFamiliar</Value>
</Value>
<Value name="34">
<Value>padeEcldSq</Value>
</Value>
<Value name="35">
<Value>escolaridade</Value>
</Value>
<Value name="36">
<Value>endeTpEndereco</Value>
</Value>
<Value name="37">
<Value>endeTienSq</Value>
</Value>
<Value name="38">
<Value>endeCep</Value>
</Value>
<Value name="39">
<Value>endeTiloCd</Value>
</Value>
<Value name="40">
<Value>endeTpLogradouro</Value>
</Value>
<Value name="41">
<Value>endeNmLogr</Value>
</Value>
<Value name="42">
<Value>endeNrImovel</Value>
</Value>
<Value name="43">
<Value>endeComplemento</Value>
</Value>
<Value name="44">
<Value>endePaisSq</Value>
</Value>
<Value name="45">
<Value>endePaisDs</Value>
</Value>
<Value name="46">
<Value>endeUf</Value>
</Value>
<Value name="47">
<Value>endeUnfeDs</Value>
</Value>
<Value name="48">
<Value>endeMuniSq</Value>
</Value>
<Value name="49">
<Value>endeMuniDs</Value>
</Value>
<Value name="50">
<Value>endeMuniCdIbge</Value>
</Value>
<Value name="51">
<Value>endeDistSq</Value>
</Value>
<Value name="52">
<Value>endeDistDs</Value>
</Value>
<Value name="53">
<Value>endeNmBairro</Value>
</Value>
<Value name="54">
<Value>endeDsPontoRef</Value>
</Value>
</Data>
<DefaultData>JSONPacReqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
