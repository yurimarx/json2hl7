Class hcd.jsonalergias4sp.JSONAlergiaToSDADTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsonalergias4sp.JSONAlergiaReq, EnsLib.EDI.XML.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsonalergias4sp.JSONAlergiaReq' targetClass='EnsLib.EDI.XML.Document' targetDocType='SDA3_schema:Container' create='new' language='objectscript' >
<annotation>Convert Patient Alergie to SDA</annotation>
<assign value='source.idPaciente' property='target.{Patient.PatientNumbers(1).Number}' action='set' />
<assign value='"MRN"' property='target.{Patient.PatientNumbers(1).NumberType}' action='set' />
<assign value='source.cnes' property='target.{SendingFacility}' action='set' />
<assign value='"AddOrUpdate"' property='target.{Action}' action='set' />
<assign value='source.cnes' property='target.{Patient.PatientNumbers(1).Organization.Code}' action='set' />
<assign value='source.dataLiberacao' property='target.{Allergies().FromTime}' action='set' />
<assign value='source.dataLiberacao' property='target.{Allergies().EnteredAt}' action='set' />
<assign value='source.dataLiberacao' property='target.{Allergies(1).UpdatedOn}' action='set' />
<assign value='"SI3"' property='target.{Allergies(1).Allergy.SDACodingStandard}' action='set' />
<assign value='source.descricaoAlergia' property='target.{Allergies(1).Allergy.Description}' action='set' />
<assign value='source.descricaoAlergia' property='target.{Allergies(1).Allergy.Code}' action='set' />
</transform>
}

}
