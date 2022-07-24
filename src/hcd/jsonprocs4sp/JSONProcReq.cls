Class hcd.jsonprocs4sp.JSONProcReq Extends Ens.Request
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

// Identificador do documento.

Property idDocumento As %Integer;

// Código da instituição da admissão.

Property idInstituicao As %Integer;

// Ano admissão 

Property anoAdmissao As %Integer;

// Número da admissão

Property numeroAdmissao As %Integer;

// Valor do número do documento.

Property numeroDocumento As %String(MAXLEN = 200);

// Descrição do documento

Property descricaoDocumento As %String(MAXLEN = 500);

// Data do documento

Property dataDocumento As %String;

// Tipo de Documento 

Property codigoTipoDocumento As %String;

// Descrição do tipo de deocumento

Property tipoDocumento As %String;

// Tipo Arquivo 

Property tipoArquivo As %String;

// Código do profissional responsavel 

Property codigoProfissional As %Integer;

// Nome do profissional responsavel

Property nomeProfissional As %String(MAXLEN = 200);

// Número do conselho do profissional

Property numeroConselho As %String;

// Sigla do conselho do profissional

Property siglaConselho As %String;

// Sigla regiao conselho

Property siglaRegiaoConselho As %String;

// Tipo de admissão

Property tipoAdmissao As %String;

// Descrição da origem da solicitação

Property descricaoOrigemSolicitacao As %String;

// Código da origem da solicitação

Property codigoOrigemSolicitacao As %String;

// Data da inclusao do documento

Property dataInclusaoDocumento As %String;

// Login da inclusão 

Property loginInclusaoDocumento As %String;

// Data da alteracao do documento

Property dataAlteracaoDocumento As %String;

// Login da alteracao 

Property loginAlteracaoDocumento As %String;

// Versao documento

Property versaoDocumento As %String;

// Data da liberacao do documento

Property dataLiberacaoDocumento As %String;

// Conteudo do arquivo no formato base 64

Property conteudoArquivo As %String(MAXLEN = "");

// Codigo do item

Property codigoItem As %String;

// Tipo de item

Property tipoItem As %String;

// Nome do item

Property nomeItem As %String;

Storage Default
{
<Data name="JSONProcReqDefaultData">
<Subscript>"JSONProcReq"</Subscript>
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
<Value>idDocumento</Value>
</Value>
<Value name="6">
<Value>idInstituicao</Value>
</Value>
<Value name="7">
<Value>anoAdmissao</Value>
</Value>
<Value name="8">
<Value>numeroAdmissao</Value>
</Value>
<Value name="9">
<Value>numeroDocumento</Value>
</Value>
<Value name="10">
<Value>dataDocumento</Value>
</Value>
<Value name="11">
<Value>codigoTipoDocumento</Value>
</Value>
<Value name="12">
<Value>tipoDocumento</Value>
</Value>
<Value name="13">
<Value>tipoArquivo</Value>
</Value>
<Value name="14">
<Value>codigoProfissional</Value>
</Value>
<Value name="15">
<Value>nomeProfissional</Value>
</Value>
<Value name="16">
<Value>numeroConselho</Value>
</Value>
<Value name="17">
<Value>siglaConselho</Value>
</Value>
<Value name="18">
<Value>siglaRegiaoConselho</Value>
</Value>
<Value name="19">
<Value>tipoAdmissao</Value>
</Value>
<Value name="20">
<Value>descricaoOrigemSolicitacao</Value>
</Value>
<Value name="21">
<Value>codigoOrigemSolicitacao</Value>
</Value>
<Value name="22">
<Value>dataInclusaoDocumento</Value>
</Value>
<Value name="23">
<Value>loginInclusaoDocumento</Value>
</Value>
<Value name="24">
<Value>dataAlteracaoDocumento</Value>
</Value>
<Value name="25">
<Value>loginAlteracaoDocumento</Value>
</Value>
<Value name="26">
<Value>versaoDocumento</Value>
</Value>
<Value name="27">
<Value>dataLiberacaoDocumento</Value>
</Value>
<Value name="28">
<Value>conteudoArquivo</Value>
</Value>
<Value name="29">
<Value>codigoItem</Value>
</Value>
<Value name="30">
<Value>tipoItem</Value>
</Value>
<Value name="31">
<Value>nomeItem</Value>
</Value>
<Value name="32">
<Value>descricaoDocumento</Value>
</Value>
<Value name="33">
<Value>autoridade</Value>
</Value>
<Value name="34">
<Value>siglaEstabelecimento</Value>
</Value>
<Value name="35">
<Value>nomeEstabelecimento</Value>
</Value>
<Value name="36">
<Value>nomeReduzidoEstabelecimento</Value>
</Value>
</Data>
<DefaultData>JSONProcReqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
