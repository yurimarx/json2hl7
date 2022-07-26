Class hcd.jsonpacs4sp.JSONPacToSDADTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsonpacs4sp.JSONPacReq, EnsLib.EDI.XML.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsonpacs4sp.JSONPacReq' targetClass='EnsLib.EDI.XML.Document' targetDocType='SDA3_schema:Container' create='new' language='objectscript' >
<annotation>Convert Patient Doc to Hl7</annotation>
<assign value='source.idPaciente' property='target.{Patient.PatientNumbers(1).Number}' action='set' />
<assign value='"MRN"' property='target.{Patient.PatientNumbers(1).NumberType}' action='set' />
<assign value='"S4SP"' property='target.{Patient.PatientNumbers(1).Organization.SDACodingStandard}' action='set' />
<assign value='source.autoridade' property='target.{Patient.PatientNumbers(1).Organization.Code}' action='set' />
<assign value='"AddOrUpdate"' property='target.{Action}' action='set' />
<assign value='source.nomeFamilia' property='target.{Patient.Name.FamilyName}' action='set' />
<assign value='source.nome' property='target.{Patient.Name.GivenName}' action='set' />
<assign value='source.sobrenome' property='target.{Patient.Name.MiddleName}' action='set' />
<assign value='source.dtNasc' property='target.{Patient.BirthTime}' action='set' />
<assign value='source.tpSexo' property='target.{Patient.Gender.Code}' action='set' />
<assign value='source.sexo' property='target.{Patient.Gender.Description}' action='set' />
<assign value='source.etinia' property='target.{Patient.EthnicGroup.Description}' action='set' />
<assign value='source.padeGretSq' property='target.{Patient.EthnicGroup.Code}' action='set' />
<assign value='source.etinia' property='target.{Patient.Race.Description}' action='set' />
<assign value='source.padeEsciSq' property='target.{Patient.MaritalStatus.Code}' action='set' />
<assign value='source.padeGretSq' property='target.{Patient.Race.Code}' action='set' />
<assign value='source.estadoCivil' property='target.{Patient.MaritalStatus.Description}' action='set' />
<assign value='source.origem' property='target.{Patient.Citizenship.Description}' action='set' />
<assign value='source.origem' property='target.{Patient.Citizenship.Code}' action='set' />
<assign value='source.padeOcupSq' property='target.{Patient.Occupation.Code}' action='set' />
<assign value='source.ocupacao' property='target.{Patient.Occupation.Description}' action='set' />
<assign value='source.padeReliSq' property='target.{Patient.Religion.Code}' action='set' />
<assign value='source.religiao' property='target.{Patient.Religion.Description}' action='set' />
<assign value='"Correios"' property='target.{Patient.Addresses(1).Zip.SDACodingStandard}' action='set' />
<assign value='source.endeCep' property='target.{Patient.Addresses(1).Zip.Code}' action='set' />
<assign value='source.endeCep' property='target.{Patient.Addresses(1).Zip.Description}' action='set' />
<assign value='source.endeNmLogr_", "_source.endeNrImovel' property='target.{Patient.Addresses(1).Street}' action='set' />
<assign value='source.endePaisSq' property='target.{Patient.Addresses(1).Country.Code}' action='set' />
<assign value='"S4SP"' property='target.{Patient.Addresses(1).City.SDACodingStandard}' action='set' />
<assign value='"S4SP"' property='target.{Patient.Addresses(1).State.SDACodingStandard}' action='set' />
<assign value='"S4SP"' property='target.{Patient.Addresses(1).Country.SDACodingStandard}' action='set' />
<assign value='"S4SP"' property='target.{Patient.Addresses(1).County.SDACodingStandard}' action='set' />
<assign value='"S4SP"' property='target.{Patient.Occupation.SDACodingStandard}' action='set' />
<assign value='source.endePaisDs' property='target.{Patient.Addresses(1).Country.Description}' action='set' />
<assign value='source.endeUf' property='target.{Patient.Addresses(1).State.Code}' action='set' />
<assign value='source.endeDistSq' property='target.{Patient.Addresses(1).County.Code}' action='set' />
<assign value='source.endeDistDs' property='target.{Patient.Addresses(1).County.Description}' action='set' />
<assign value='..Piece(source.mae," ",1)' property='target.{Patient.MothersFullName.GivenName}' action='set' />
<assign value='..Piece(source.mae," ",2)' property='target.{Patient.MothersFullName.MiddleName}' action='set' />
<assign value='..Piece(source.mae," ",3)' property='target.{Patient.MothersFullName.FamilyName}' action='set' />
<assign value='source.endeUnfeDs' property='target.{Patient.Addresses(1).State.Description}' action='set' />
<assign value='source.endeMuniSq' property='target.{Patient.Addresses(1).City.Code}' action='set' />
<assign value='source.endeMuniDs' property='target.{Patient.Addresses(1).City.Description}' action='set' />
<assign value='source.tpSexo' property='target.{Patient.BirthGender.Code}' action='set' />
<assign value='source.sexo' property='target.{Patient.BirthGender.Description}' action='set' />
<assign value='source.cnes' property='target.{SendingFacility}' action='set' />
<assign value='"S4SP"' property='target.{Patient.Religion.SDACodingStandard}' action='set' />
<assign value='"S4SP"' property='target.{Patient.MaritalStatus.SDACodingStandard}' action='set' />
<assign value='"S4SP"' property='target.{Patient.Gender.SDACodingStandard}' action='set' />
<assign value='"S4SP"' property='target.{Patient.BirthGender.SDACodingStandard}' action='set' />
<assign value='"S4SP"' property='target.{Patient.Race.SDACodingStandard}' action='set' />
<assign value='"S4SP"' property='target.{Patient.EthnicGroup.SDACodingStandard}' action='set' />
<assign value='source.uf' property='target.{Patient.BirthPlace.State.Code}' action='set' />
<assign value='"S4SP"' property='target.{Patient.BirthPlace.State.SDACodingStandard}' action='set' />
<assign value='source.muniSq' property='target.{Patient.BirthPlace.City.Code}' action='set' />
<assign value='source.muniDs' property='target.{Patient.BirthPlace.City.Description}' action='set' />
<assign value='"S4SP"' property='target.{Patient.BirthPlace.City.SDACodingStandard}' action='set' />
<assign value='source.origem' property='target.{Patient.BirthPlace.Country.Code}' action='set' />
<assign value='"S4SP"' property='target.{Patient.BirthPlace.Country.SDACodingStandard}' action='set' />
<assign value='"S4SP"' property='target.{Patient.Citizenship.SDACodingStandard}' action='set' />
</transform>
}

}
