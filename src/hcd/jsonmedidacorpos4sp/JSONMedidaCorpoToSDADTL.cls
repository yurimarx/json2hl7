Class hcd.jsonmedidacorpos4sp.JSONMedidaCorpoToSDADTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsonmedidacorpos4sp.JSONMedidaCorpoReq, EnsLib.EDI.XML.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsonmedidacorpos4sp.JSONMedidaCorpoReq' targetClass='EnsLib.EDI.XML.Document' targetDocType='SDA3_schema:Container' create='new' language='objectscript' >
<annotation>Convert Patient Corporal Metrics to SDA</annotation>
<assign value='source.idPaciente' property='target.{Patient.PatientNumbers(1).Number}' action='set' />
<assign value='"MRN"' property='target.{Patient.PatientNumbers(1).NumberType}' action='set' />
<assign value='source.autoridade' property='target.{Patient.PatientNumbers(1).Organization.Code}' action='set' />
<assign value='"S4SP"' property='target.{Patient.PatientNumbers(1).Organization.SDACodingStandard}' action='set' />
<assign value='source.cnes' property='target.{SendingFacility}' action='set' />
<assign value='"AddOrUpdate"' property='target.{Action}' action='set' />
<foreach property='source.medidasCorpo()' key='idx' >
<assign value='source.medidasCorpo.(idx).indicador' property='target.{Observations(idx).ObservationCode.Code}' action='set' />
<assign value='"S4SP"' property='target.{Observations(idx).ObservationCode.SDACodingStandard}' action='set' />
<assign value='source.medidasCorpo.(idx).indicador' property='target.{Observations(idx).ObservationCode.Description}' action='set' />
<assign value='source.dataInclusao' property='target.{Observations(idx).ObservationTime}' action='set' />
<assign value='source.dataInclusao' property='target.{Observations(idx).FromTime}' action='set' />
<assign value='source.dataLiberacao' property='target.{Observations(idx).ToTime}' action='set' />
<assign value='source.dataAlteracao' property='target.{Observations(idx).UpdatedOn}' action='set' />
<assign value='source.medidasCorpo.(idx).valorIndicador' property='target.{Observations(idx).ObservationValue}' action='set' />
</foreach>
</transform>
}

}
