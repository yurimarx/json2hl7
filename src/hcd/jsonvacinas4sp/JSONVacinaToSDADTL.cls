Class hcd.jsonvacinas4sp.JSONVacinaToSDADTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsonvacinas4sp.JSONVacinaReq, EnsLib.EDI.XML.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsonvacinas4sp.JSONVacinaReq' targetClass='EnsLib.EDI.XML.Document' targetDocType='SDA3_schema:Container' create='new' language='objectscript' >
<annotation>Convert Patient Vaccine to SDA</annotation>
<assign value='source.idPaciente' property='target.{Patient.PatientNumbers(1).Number}' action='set' />
<assign value='"MRN"' property='target.{Patient.PatientNumbers(1).NumberType}' action='set' />
<assign value='"S4SP"' property='target.{Patient.PatientNumbers(1).Organization.SDACodingStandard}' action='set' />
<assign value='source.autoridade' property='target.{Patient.PatientNumbers(1).Organization.Code}' action='set' />
<assign value='source.cnes' property='target.{SendingFacility}' action='set' />
<assign value='"AddOrUpdate"' property='target.{Action}' action='set' />
<assign value='source.dataBase' property='target.{Vaccinations(1).EnteredOn}' action='set' />
<assign value='source.dataBase' property='target.{Vaccinations(1).FromTime}' action='set' />
<assign value='source.dataBase' property='target.{Vaccinations(1).ToTime}' action='set' />
<assign value='source.vacina' property='target.{Vaccinations(1).DrugProduct.Description}' action='set' />
<assign value='source.vacina' property='target.{Vaccinations(1).DrugProduct.Code}' action='set' />
<assign value='"S4SP"' property='target.{Vaccinations(1).DrugProduct.SDACodingStandard}' action='set' />
</transform>
}

}
