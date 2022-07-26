Class hcd.jsonprocs4sp.JSONProcToSDADTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsonprocs4sp.JSONProcReq, EnsLib.EDI.XML.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsonprocs4sp.JSONProcReq' targetClass='EnsLib.EDI.XML.Document' targetDocType='SDA3_schema:Container' create='new' language='objectscript' >
<annotation>Convert Patient Digital Documents to SDA</annotation>
<assign value='source.idPaciente' property='target.{Patient.PatientNumbers(1).Number}' action='set' />
<assign value='"MRN"' property='target.{Patient.PatientNumbers(1).NumberType}' action='set' />
<assign value='"S4SP"' property='target.{Patient.PatientNumbers(1).Organization.SDACodingStandard}' action='set' />
<assign value='source.autoridade' property='target.{Patient.PatientNumbers(1).Organization.Code}' action='set' />
<assign value='source.tipoArquivo' property='target.{Documents(1).FileType}' action='set' />
<assign value='source.conteudoArquivo' property='target.{Documents(1).Stream}' action='set' />
<assign value='source.dataDocumento' property='target.{Encounters(1).FromTime}' action='set' />
<assign value='source.tipoAdmissao' property='target.{Encounters(1).AdmissionType.Code}' action='set' />
<assign value='"S4SP"' property='target.{Encounters(1).AdmissionType.SDACodingStandard}' action='set' />
<assign value='source.numeroDocumento_" - "_source.tipoDocumento' property='target.{Documents(1).DocumentName}' action='set' />
<assign value='source.idDocumento' property='target.{Documents(1).DocumentNumber}' action='set' />
<assign value='source.dataDocumento' property='target.{Documents(1).DocumentTime}' action='set' />
<assign value='source.siglaEstabelecimento' property='target.{Documents(1).EnteredBy.Code}' action='set' />
<assign value='source.nomeReduzidoEstabelecimento' property='target.{Documents(1).EnteredBy.Description}' action='set' />
<assign value='source.dataInclusaoDocumento' property='target.{Documents(1).EnteredOn}' action='set' />
<assign value='source.codigoTipoDocumento' property='target.{Documents(1).Category.Code}' action='set' />
<assign value='source.tipoDocumento' property='target.{Documents(1).Category.Description}' action='set' />
<assign value='"S4SP"' property='target.{Documents(1).Category.SDACodingStandard}' action='set' />
<assign value='"S4SP"' property='target.{Documents(1).EnteredBy.SDACodingStandard}' action='set' />
<assign value='"S4SP"' property='target.{Documents(1).DocumentType.SDACodingStandard}' action='set' />
<assign value='source.numeroAdmissao' property='target.{Documents(1).EncounterNumber}' action='set' />
<assign value='source.codigoItem' property='target.{Documents(1).DocumentType.Code}' action='set' />
<assign value='source.cnes' property='target.{SendingFacility}' action='set' />
<assign value='source.numeroAdmissao' property='target.{Encounters(1).EncounterNumber}' action='set' />
<assign value='"S4SP"' property='target.{Encounters(1).HealthCareFacility.SDACodingStandard}' action='set' />
<assign value='source.idInstituicao' property='target.{Encounters(1).HealthCareFacility.Code}' action='set' />
<assign value='source.dataAlteracaoDocumento' property='target.{Documents(1).UpdatedOn}' action='set' />
<assign value='source.descricaoOrigemSolicitacao' property='target.{Documents(1).NoteText}' action='set' />
<assign value='source.nomeItem' property='target.{Documents(1).DocumentType.Description}' action='set' />
<assign value='"AddOrUpdate"' property='target.{Action}' action='set' />
</transform>
}

}
