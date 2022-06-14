Class hcd.jsonproctosda.JSONProcToSDADTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsonproctosda.JSONProcSDAReq, EnsLib.EDI.XML.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsonproctosda.JSONProcSDAReq' targetClass='EnsLib.EDI.XML.Document' targetDocType='SDA3_schema:Container' create='new' language='objectscript' >
<annotation>Convert Patient Doc to Hl7</annotation>
<assign value='source.idPaciente' property='target.{Patient.PatientNumbers(1).Number}' action='set' />
<assign value='"MRN"' property='target.{Patient.PatientNumbers(1).NumberType}' action='set' />
<assign value='source.tipoArquivo' property='target.{Documents(1).FileType}' action='set' />
<assign value='source.conteudoArquivo' property='target.{Documents(1).Stream}' action='set' />
<assign value='source.idDocumento' property='target.{Documents(1).DocumentNumber}' action='set' />
<assign value='source.dataDocumento' property='target.{Documents(1).DocumentTime}' action='set' />
<assign value='source.idInstituicao' property='target.{Documents(1).EncounterNumber}' action='set' />
<assign value='source.tipoDocumento' property='target.{Documents(1).DocumentType}' action='set' />
</transform>
}

}
