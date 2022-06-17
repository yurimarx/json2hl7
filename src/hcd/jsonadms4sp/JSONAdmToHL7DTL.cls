Class hcd.jsonadms4sp.JSONAdmToHL7DTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsonadms4sp.JSONAdmReq, EnsLib.HL7.Message) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsonadms4sp.JSONAdmReq' targetClass='EnsLib.HL7.Message' targetDocType='2.4:ADT_A01' create='new' language='objectscript' >
<annotation>Convert Patient Admission to Hl7</annotation>
<assign value='source.idPaciente' property='target.{PID:PatientID}' action='set' />
<assign value='"S4SP"' property='target.{MSH:SendingApplication}' action='set' />
<assign value='"S4SP"' property='target.{MSH:SendingFacility}' action='set' />
<assign value='"HCD"' property='target.{MSH:ReceivingApplication}' action='set' />
<assign value='"SES"' property='target.{MSH:ReceivingFacility}' action='set' />
<assign value='source.currentDateTime' property='target.{EVN:RecordedDateTime}' action='set' />
<assign value='source.messageId' property='target.{MSH:MessageControlID}' action='set' />
<assign value='"2.4"' property='target.{MSH:VersionID}' action='set' />
<assign value='"A08"' property='target.{MSH:MessageType.triggerevent}' action='set' />
<assign value='"ADT"' property='target.{MSH:MessageType.messagetype}' action='set' />
<assign value='"A08"' property='target.{EVN:EventTypeCode}' action='set' />
<assign value='"I"' property='target.{PV1:PatientClass}' action='set' />
<assign value='source.dataIngresso' property='target.{PV1:AdmitDateTime}' action='set' />
<assign value='source.numeroAdmissao' property='target.{PV1:VisitNumber}' action='set' />
<assign value='source.centroCusto' property='target.{PV1:FinancialClass(1).FinancialClass}' action='set' />
<assign value='source.codigoEspecialidade' property='target.{PV1:DietType.identifierST}' action='set' />
<assign value='source.especialidade' property='target.{PV1:DietType.text}' action='set' />
<assign value='source.currentDateTime' property='target.{MSH:DateTimeOfMessage}' action='set' />
</transform>
}

}
