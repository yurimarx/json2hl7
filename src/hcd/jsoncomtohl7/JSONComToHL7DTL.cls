Class hcd.jsoncomtohl7.JSONComToHL7DTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsoncomtohl7.JSONComHL7Req, EnsLib.HL7.Message) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsoncomtohl7.JSONComHL7Req' targetClass='EnsLib.HL7.Message' targetDocType='2.4:ADT_A01' create='new' language='objectscript' >
<annotation>Convert Communication channel Patient to Hl7</annotation>
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
<assign value='source.idPaciente' property='target.{PID:PatientID}' action='set' />
<assign value='"I"' property='target.{PV1:PatientClass}' action='set' />
<assign value='source.currentDateTime' property='target.{MSH:DateTimeOfMessage}' action='set' />
<assign value='source.descricaoComunicacao2' property='target.{PID:PhoneNumberBusiness(1).phonenumber1}' action='set' />
<assign value='source.descricaoComunicacao' property='target.{PID:PhoneNumberHome(1).phonenumber1}' action='set' />
</transform>
}

}
