Class hcd.jsonprocs4sp.JSONProcToSDADTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsonprocs4sp.JSONProcReq, EnsLib.EDI.XML.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsonprocs4sp.JSONProcReq' targetClass='EnsLib.EDI.XML.Document' targetDocType='SDA3_schema:Container' create='new' language='objectscript' >
<annotation>Convert Patient Procedures to SDA</annotation>
<assign value='source.idPaciente' property='target.{Patient.PatientNumbers(1).Number}' action='set' />
<assign value='"MRN"' property='target.{Patient.PatientNumbers(1).NumberType}' action='set' />
<assign value='source.tipoArquivo' property='target.{Documents(1).FileType}' action='set' />
<assign value='source.conteudoArquivo' property='target.{Documents(1).Stream}' action='set' />
<assign value='source.idDocumento' property='target.{Documents(1).DocumentNumber}' action='set' />
<assign value='source.dataDocumento' property='target.{Documents(1).DocumentTime}' action='set' />
<assign value='"LOINC"' property='target.{Documents(1).DocumentType.SDACodingStandard}' action='set' />
<assign value='"CNE"' property='target.{Documents(1).DocumentType.CodeSystemVersionId}' action='set' />
<assign value='source.nomeItem' property='target.{Documents(1).DocumentType.OriginalText}' action='set' />
<assign value='source.codigoItem' property='target.{Documents(1).DocumentType.Code}' action='set' />
<assign value='source.tipoItem' property='target.{Documents(1).DocumentType.Description}' action='set' />
<assign value='"S4SP"' property='target.{SendingFacility}' action='set' />
<assign value='"S4SP"' property='target.{Patient.PatientNumbers(1).Organization.Code}' action='set' />
<assign value='"AddOrUpdate"' property='target.{Action}' action='set' />
</transform>
}

}
