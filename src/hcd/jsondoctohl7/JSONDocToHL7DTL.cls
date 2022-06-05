Class hcd.jsondoctohl7.JSONDocToHL7DTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsondoctohl7.JSONDocHL7Req, EnsLib.HL7.Message) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsondoctohl7.JSONDocHL7Req' targetClass='EnsLib.HL7.Message' targetDocType='2.4:ADT_A01' create='new' language='objectscript' >
<annotation>Convert Patient Doc to Hl7</annotation>
<assign value='"MSH|^~\&amp;amp;|S4SP|SES|HCD|SES|20080624133634||ADT^A08|200806241336340801|P|2.2|1||||||"' property='target.{MSH}' action='set' />
<assign value='"A08"' property='target.{EVN:EventTypeCode}' action='set' />
<assign value='..CurrentDateTime()' property='target.{EVN:RecordedDateTime}' action='set' />
<assign value='1' property='target.{EVN:EventFacility}' action='set' />
<assign value='source.idPaciente' property='target.{PID:PatientID}' action='set' />
<assign value='source.numeroDocumento' property='target.{PID:SSNNumberPatient}' action='set' />
</transform>
}

}
