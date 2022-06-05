Class hcd.jsontohl7.JSONToHL7DTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsontohl7.JSONHL7Req, EnsLib.HL7.Message) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsontohl7.JSONHL7Req' targetClass='EnsLib.HL7.Message' targetDocType='2.4:ADT_A01' create='new' language='objectscript' >
<annotation>Mapping to transform JSON to HL7</annotation>
<assign value='"MSH|^~\&amp;|S4SP|SES|HCD|SES|20080624133634||ADT^A08|200806241336340801|P|2.2|1||||||"' property='target.{MSH}' action='set' />
<assign value='"A08"' property='target.{EVN:EventTypeCode}' action='set' />
<assign value='..CurrentDateTime()' property='target.{EVN:RecordedDateTime}' action='set' />
<assign value='1' property='target.{EVN:EventReasonCode}' action='set' />
<assign value='"PID|1|1000027800||1927|TEST PATIENT^||19400102|F||B|169 MY ST^^CITYGOESHERE^MI^12345||(123)456-3604|(000)000-0000||M||4370|999-99-9999||||||||||"' property='target.{PID}' action='set' />
<assign value='source.idPaciente' property='target.{PID:PatientID}' action='set' />
<assign value='source.religiao' property='target.{PID:Religion.text}' action='set' />
<assign value='source.endePaisDs' property='target.{PID:PatientAddress().country}' action='set' />
<assign value='source.endeTpLogradouro' property='target.{PID:PatientAddress().addresstype}' action='set' />
<assign value='source.endeNmLogr' property='target.{PID:PatientAddress().streetaddressSAD.streetname}' action='set' />
<assign value='source.endeNrImovel' property='target.{PID:PatientAddress().streetaddressSAD.dwellingnumber}' action='set' />
<assign value='source.endeUf' property='target.{PID:PatientAddress().stateorprovince}' action='set' />
<assign value='source.endeMuniDs' property='target.{PID:PatientAddress().city}' action='set' />
<assign value='source.endeCep' property='target.{PID:PatientAddress().ziporpostalcode}' action='set' />
<assign value='source.endeComplemento' property='target.{PID:PatientAddress().othergeographicdesignation}' action='set' />
<assign value='source.endeDsPontoRef' property='target.{PID:PatientAddress().otherdesignation}' action='set' />
<assign value='source.origem' property='target.{PID:Nationality.text}' action='set' />
<assign value='source.estadoCivil' property='target.{PID:MaritalStatus.text}' action='set' />
<assign value='source.naturalidade' property='target.{PID:BirthPlace}' action='set' />
<assign value='source.dtNasc' property='target.{PID:DateTimeOfBirth}' action='set' />
<assign value='source.matricula' property='target.{PID:PatientAccountNumber}' action='set' />
<assign value='source.nome' property='target.{PID:PatientName().givenname}' action='set' />
<assign value='source.sobrenome' property='target.{PID:PatientName().familyname.ownsurname}' action='set' />
<assign value='source.nomeFamilia' property='target.{PID:PatientName().familyname.surname}' action='set' />
<assign value='source.sexo' property='target.{PID:AdministrativeSex}' action='set' />
<assign value='source.origem' property='target.{PID:Citizenship().text}' action='set' />
<assign value='source.etinia' property='target.{PID:Race().text}' action='set' />
</transform>
}

}
