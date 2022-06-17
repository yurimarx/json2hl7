Class hcd.jsonprocs4sp.JSONProcReq Extends Ens.Request
{

// current date time

Property currentDateTime As %String;

// message id

Property messageId As %String;

// Identificador do paciente no SI3, no hospital consultado.

Property idPaciente As %Integer;

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

// Data do documento

Property dataDocumento As Ens.DataType.UTC;

// Tipo de Documento 

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

Property dataInclusaoDocumento As Ens.DataType.UTC;

// Login da inclusão 

Property loginInclusaoDocumento As %String;

// Versao documento

Property versaoDocumento As %String;

// Data da liberacao do documento

Property dataLiberacaoDocumento As Ens.DataType.UTC;

// Codigo do item

Property codigoItem As %String;

// Tipo de item

Property tipoItem As %String;

// Nome do item

Property nomeItem As %String;

// Conteudo do arquivo no formato base 64

Property conteudoArquivo As %String(MAXLEN = "");

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
<Value>idDocumento</Value>
</Value>
<Value name="5">
<Value>idInstituicao</Value>
</Value>
<Value name="6">
<Value>anoAdmissao</Value>
</Value>
<Value name="7">
<Value>numeroAdmissao</Value>
</Value>
<Value name="8">
<Value>numeroDocumento</Value>
</Value>
<Value name="9">
<Value>dataDocumento</Value>
</Value>
<Value name="10">
<Value>tipoDocumento</Value>
</Value>
<Value name="11">
<Value>tipoArquivo</Value>
</Value>
<Value name="12">
<Value>codigoProfissional</Value>
</Value>
<Value name="13">
<Value>nomeProfissional</Value>
</Value>
<Value name="14">
<Value>numeroConselho</Value>
</Value>
<Value name="15">
<Value>siglaConselho</Value>
</Value>
<Value name="16">
<Value>siglaRegiaoConselho</Value>
</Value>
<Value name="17">
<Value>tipoAdmissao</Value>
</Value>
<Value name="18">
<Value>descricaoOrigemSolicitacao</Value>
</Value>
<Value name="19">
<Value>codigoOrigemSolicitacao</Value>
</Value>
<Value name="20">
<Value>dataInclusaoDocumento</Value>
</Value>
<Value name="21">
<Value>loginInclusaoDocumento</Value>
</Value>
<Value name="22">
<Value>versaoDocumento</Value>
</Value>
<Value name="23">
<Value>dataLiberacaoDocumento</Value>
</Value>
<Value name="24">
<Value>codigoItem</Value>
</Value>
<Value name="25">
<Value>tipoItem</Value>
</Value>
<Value name="26">
<Value>nomeItem</Value>
</Value>
<Value name="27">
<Value>conteudoArquivo</Value>
</Value>
</Data>
<DefaultData>JSONProcReqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
