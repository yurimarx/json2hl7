Class hcd.jsonpacs4sp.JSONPacToHL7DTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsonpacs4sp.JSONPacReq, EnsLib.HL7.Message) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsonpacs4sp.JSONPacReq' targetClass='EnsLib.HL7.Message' targetDocType='2.4:ADT_A01' create='new' language='objectscript' >
<annotation>Mapping to transform JSON to HL7</annotation>
<assign value='"A08"' property='target.{EVN:EventTypeCode}' action='set' />
<assign value='source.idPaciente' property='target.{PID:PatientID}' action='set' />
<assign value='"A08"' property='target.{MSH:MessageType.triggerevent}' action='set' />
<assign value='"2.4"' property='target.{MSH:VersionID}' action='set' />
<assign value='"ADT"' property='target.{MSH:MessageType.messagetype}' action='set' />
<assign value='"I"' property='target.{PV1:PatientClass}' action='set' />
<assign value='source.religiao' property='target.{PID:Religion.text}' action='set' />
<assign value='source.endePaisDs' property='target.{PID:PatientAddress(1).country}' action='set' />
<assign value='source.endeTpLogradouro' property='target.{PID:PatientAddress(1).addresstype}' action='set' />
<assign value='source.endeNmLogr' property='target.{PID:PatientAddress(1).streetaddressSAD.streetname}' action='set' />
<assign value='source.endeNmLogr' property='target.{PID:PatientAddress(1).streetaddressSAD.streetormailingaddress}' action='set' />
<assign value='source.tpSexo' property='target.{PID:AdministrativeSex}' action='set' />
<assign value='source.endeNrImovel' property='target.{PID:PatientAddress(1).streetaddressSAD.dwellingnumber}' action='set' />
<assign value='source.endeUf' property='target.{PID:PatientAddress(1).stateorprovince}' action='set' />
<assign value='source.endeMuniDs' property='target.{PID:PatientAddress(1).city}' action='set' />
<assign value='source.endeCep' property='target.{PID:PatientAddress(1).ziporpostalcode}' action='set' />
<assign value='source.endeComplemento' property='target.{PID:PatientAddress(1).othergeographicdesignation}' action='set' />
<assign value='source.endeDsPontoRef' property='target.{PID:PatientAddress(1).otherdesignation}' action='set' />
<assign value='source.origem' property='target.{PID:Nationality.text}' action='set' />
<assign value='source.estadoCivil' property='target.{PID:MaritalStatus.text}' action='set' />
<assign value='source.naturalidade' property='target.{PID:BirthPlace}' action='set' />
<assign value='source.dtNasc' property='target.{PID:DateTimeOfBirth}' action='set' />
<assign value='source.matricula' property='target.{PID:PatientAccountNumber}' action='set' />
<assign value='source.nome' property='target.{PID:PatientName(1).givenname}' action='set' />
<assign value='source.sobrenome' property='target.{PID:PatientName(1).familyname.ownsurname}' action='set' />
<assign value='source.nomeFamilia' property='target.{PID:PatientName(1).familyname.surname}' action='set' />
<assign value='source.origem' property='target.{PID:Citizenship(1).text}' action='set' />
<assign value='source.etinia' property='target.{PID:Race(1).text}' action='set' />
<assign value='"S4SP"' property='target.{MSH:SendingApplication}' action='set' />
<assign value='"S4SP"' property='target.{MSH:SendingFacility}' action='set' />
<assign value='"HCD"' property='target.{MSH:ReceivingApplication}' action='set' />
<assign value='"SES"' property='target.{MSH:ReceivingFacility}' action='set' />
<assign value='source.currentDateTime' property='target.{MSH:DateTimeOfMessage}' action='set' />
<assign value='source.currentDateTime' property='target.{EVN:RecordedDateTime}' action='set' />
<assign value='source.messageId' property='target.{MSH:MessageControlID}' action='set' />
</transform>
}

}
