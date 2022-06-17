Class hcd.jsondocs4sp.JSONDocToHL7DTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsondocs4sp.JSONDocReq, EnsLib.HL7.Message) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsondocs4sp.JSONDocReq' targetClass='EnsLib.HL7.Message' targetDocType='2.4:ADT_A01' create='new' language='objectscript' >
<annotation>Convert Patient Doc to Hl7</annotation>
<assign value='"S4SP"' property='target.{MSH:SendingApplication}' action='set' />
<assign value='"S4SP"' property='target.{MSH:SendingFacility}' action='set' />
<assign value='"HCD"' property='target.{MSH:ReceivingApplication}' action='set' />
<assign value='"SES"' property='target.{MSH:ReceivingFacility}' action='set' />
<assign value='source.currentDateTime' property='target.{EVN:RecordedDateTime}' action='set' />
<assign value='source.messageId' property='target.{MSH:MessageControlID}' action='set' />
<assign value='"2.4"' property='target.{MSH:VersionID}' action='set' />
<assign value='"A08"' property='target.{MSH:MessageType.triggerevent}' action='set' />
<assign value='"A08"' property='target.{EVN:EventTypeCode}' action='set' />
<assign value='source.idPaciente' property='target.{PID:PatientID}' action='set' />
<assign value='source.cpf' property='target.{PID:SSNNumberPatient}' action='set' />
<assign value='..If(source.rg = "",,source.rg_" "_source.siglaEmissor_"/"_source.ufEmissor)' property='target.{PID:DriversLicenseNumberPatient}' action='set' />
<assign value='..If(source.cns = "",,"SUS")' property='target.{PID:PatientIdentifierList(1).assigningauthority}' action='set' />
<assign value='source.cns' property='target.{PID:PatientIdentifierList(1).ID}' action='set' />
<assign value='"ADT"' property='target.{MSH:MessageType.messagetype}' action='set' />
<assign value='"I"' property='target.{PV1:PatientClass}' action='set' />
<assign value='source.currentDateTime' property='target.{MSH:DateTimeOfMessage}' action='set' />
</transform>
}

}
