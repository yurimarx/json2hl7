Class hcd.jsonagendas4sp.JSONAgendaToSDADTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsonagendas4sp.JSONAgendaReq, EnsLib.EDI.XML.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsonagendas4sp.JSONAgendaReq' targetClass='EnsLib.EDI.XML.Document' targetDocType='SDA3_schema:Container' create='new' language='objectscript' >
<annotation>Convert Patient Schedule to SDA</annotation>
<assign value='source.idPaciente' property='target.{Patient.PatientNumbers(1).Number}' action='set' />
<assign value='"MRN"' property='target.{Patient.PatientNumbers(1).NumberType}' action='set' />
<assign value='"S4SP"' property='target.{SendingFacility}' action='set' />
<assign value='source.cnes' property='target.{Patient.PatientNumbers(1).Organization.Code}' action='set' />
<assign value='source.cnes' property='target.{Appointments(1).EncounterNumber}' action='set' />
<assign value='source.numeroComplementoProcedimento' property='target.{Appointments().Type.Code}' action='set' />
<assign value='source.nomeProcedimento' property='target.{Appointments().Type.Description}' action='set' />
<assign value='"SI3"' property='target.{Appointments().Type.SDACodingStandard}' action='set' />
<assign value='source.numeroComplementoProcedimento' property='target.{Appointments().OrderItem.Code}' action='set' />
<assign value='source.nomeProcedimento' property='target.{Appointments().OrderItem.Description}' action='set' />
<assign value='"SI3"' property='target.{Appointments(1).OrderItem.SDACodingStandard}' action='set' />
<assign value='"AddOrUpdate"' property='target.{Action}' action='set' />
</transform>
}

}
