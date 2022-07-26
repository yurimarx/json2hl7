Class hcd.jsondiags4sp.JSONDiagToSDADTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsondiags4sp.JSONDiagReq, EnsLib.EDI.XML.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsondiags4sp.JSONDiagReq' targetClass='EnsLib.EDI.XML.Document' targetDocType='SDA3_schema:Container' create='new' language='objectscript' >
<annotation>Convert Patient Diagnosis to SDA</annotation>
<assign value='source.idPaciente' property='target.{Patient.PatientNumbers(1).Number}' action='set' />
<assign value='"MRN"' property='target.{Patient.PatientNumbers(1).NumberType}' action='set' />
<assign value='source.autoridade' property='target.{Patient.PatientNumbers(1).Organization.Code}' action='set' />
<assign value='"S4SP"' property='target.{Patient.PatientNumbers(1).Organization.SDACodingStandard}' action='set' />
<assign value='source.cnes' property='target.{SendingFacility}' action='set' />
<assign value='"AddOrUpdate"' property='target.{Action}' action='set' />
<assign value='source.codigo' property='target.{Diagnoses(1).Diagnosis.Code}' action='set' />
<assign value='source.descricao' property='target.{Diagnoses(1).Diagnosis.Description}' action='set' />
<assign value='"S4SP"' property='target.{Diagnoses(1).Diagnosis.SDACodingStandard}' action='set' />
<assign value='"S4SP"' property='target.{Diagnoses(1).Status.SDACodingStandard}' action='set' />
<assign value='source.status' property='target.{Diagnoses(1).Status.Code}' action='set' />
<assign value='source.dataInicio' property='target.{Diagnoses(1).FromTime}' action='set' />
</transform>
}

}
