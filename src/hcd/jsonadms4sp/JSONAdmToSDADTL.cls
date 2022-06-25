Class hcd.jsonadms4sp.JSONAdmToSDADTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsonadms4sp.JSONAdmReq, EnsLib.EDI.XML.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsonadms4sp.JSONAdmReq' targetClass='EnsLib.EDI.XML.Document' targetDocType='SDA3_schema:Container' create='new' language='objectscript' >
<annotation>Convert Patient Admission to SDA</annotation>
<assign value='source.idPaciente' property='target.{Patient.PatientNumbers(1).Number}' action='set' />
<assign value='"MRN"' property='target.{Patient.PatientNumbers(1).NumberType}' action='set' />
<assign value='source.cnes' property='target.{SendingFacility}' action='set' />
<assign value='source.cnes' property='target.{Patient.PatientNumbers(1).Organization.Code}' action='set' />
<assign value='"SI3"' property='target.{Encounters(1).HealthCareFacility.SDACodingStandard}' action='set' />
<assign value='source.idUnidadeFuncional' property='target.{Encounters(1).HealthCareFacility.Code}' action='set' />
<assign value='source.siglaUnidadeFuncional_" - "_source.nomeUnidadeFuncional' property='target.{Encounters(1).HealthCareFacility.Description}' action='set' />
<assign value='"MS"' property='target.{Patient.PatientNumbers(1).Organization.SDACodingStandard}' action='set' />
<assign value='source.numeroAdmissao' property='target.{Encounters(1).EncounterNumber}' action='set' />
<assign value='source.codigoEspecialidade' property='target.{Encounters(1).Specialties(1).Code}' action='set' />
<assign value='source.especialidade' property='target.{Encounters(1).Specialties(1).Description}' action='set' />
<assign value='"SI3"' property='target.{Encounters(1).Specialties(1).SDACodingStandard}' action='set' />
<assign value='source.dataIngresso' property='target.{Encounters(1).EnteredOn}' action='set' /> 
<assign value='"SI3"' property='target.{Encounters(1).EnteredAt.SDACodingStandard}' action='set' />
<assign value='source.idUnidadeFuncional' property='target.{Encounters(1).EnteredAt.Code}' action='set' />
<assign value='source.siglaUnidadeFuncional_" - "_source.nomeUnidadeFuncional' property='target.{Encounters(1).EnteredAt.Description}' action='set' />
<assign value='"AddOrUpdate"' property='target.{Encounters(1).ActionCode}' action='set' />
<assign value='"AddOrUpdate"' property='target.{Action}' action='set' />
</transform>
}

}
