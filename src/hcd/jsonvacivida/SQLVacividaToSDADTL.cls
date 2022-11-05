Class hcd.jsonvacivida.SQLVacividaToSDADTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsonvacivida.VacividaReq, EnsLib.EDI.XML.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsonvacivida.VacividaReq' targetClass='EnsLib.EDI.XML.Document' targetDocType='SDA3_schema:Container' create='new' language='objectscript' >
<assign value='"VACIVIDA"' property='target.{SendingFacility}' action='set' />
<assign value='..Piece(source.NomePaciente, " ", 1)' property='target.{Patient.Name.GivenName}' action='set' />
<assign value='..Piece(source.NomeMae," ","*")' property='target.{Patient.MothersFullName.FamilyName}' action='set' />
<assign value='..Piece(source.NomeMae, " ", 1)' property='target.{Patient.MothersFullName.GivenName}' action='set' />
<assign value='..Piece(source.NomePaciente, " " ,"*")' property='target.{Patient.Name.FamilyName}' action='set' />
<assign value='"VACIVIDA"' property='target.{Patient.Gender.SDACodingStandard}' action='set' />
<assign value='source.Sexo' property='target.{Patient.Gender.Code}' action='set' />
<assign value='source.Sexo' property='target.{Patient.Gender.Description}' action='set' />
<assign value='"VACIVIDA"' property='target.{Patient.Race.SDACodingStandard}' action='set' />
<assign value='source.Raca' property='target.{Patient.Race.Code}' action='set' />
<assign value='source.Raca' property='target.{Patient.Race.Description}' action='set' />
<assign value='"VACIVIDA"' property='target.{Patient.EthnicGroup.SDACodingStandard}' action='set' />
<assign value='source.Etnia' property='target.{Patient.EthnicGroup.Code}' action='set' />
<assign value='source.Etnia' property='target.{Patient.EthnicGroup.Description}' action='set' />
<assign value='source.DataNascimento' property='target.{Patient.BirthTime}' action='set' />
<assign value='source.IdPaciente' property='target.{Patient.PatientNumbers(1).Number}' action='set' />
<assign value='"MRN"' property='target.{Patient.PatientNumbers(1).NumberType}' action='set' />
<assign value='"VACIVIDA"' property='target.{Patient.PatientNumbers(1).Organization.SDACodingStandard}' action='set' />
<assign value='"VACIVIDA"' property='target.{Patient.PatientNumbers(1).Organization.Code}' action='set' />
<assign value='source.Uf' property='target.{Patient.Addresses(1).State.Code}' action='set' />
<assign value='source.Uf' property='target.{Patient.Addresses(1).State.Description}' action='set' />
<assign value='"VACIVIDA"' property='target.{Patient.Addresses(1).State.SDACodingStandard}' action='set' />
<assign value='source.Municipio' property='target.{Patient.Addresses(1).City.Code}' action='set' />
<assign value='source.Municipio' property='target.{Patient.Addresses(1).City.Description}' action='set' />
<assign value='"VACIVIDA"' property='target.{Patient.Addresses(1).City.SDACodingStandard}' action='set' />
<assign value='"VACIVIDA"' property='target.{Patient.Addresses(1).Country.SDACodingStandard}' action='set' />
<assign value='"BRASIL"' property='target.{Patient.Addresses(1).Country.Code}' action='set' />
<assign value='"BRASIL"' property='target.{Patient.Addresses(1).Country.Description}' action='set' />
<assign value='"VACIVIDA"' property='target.{Patient.Addresses(1).County.SDACodingStandard}' action='set' />
<assign value='source.BairroLogradouro' property='target.{Patient.Addresses(1).County.Code}' action='set' />
<assign value='source.BairroLogradouro' property='target.{Patient.Addresses(1).County.Description}' action='set' />
<assign value='source.Ddd_" "_source.Telefone' property='target.{Patient.ContactInfo.HomePhoneNumber}' action='set' />
<assign value='source.Logradouro_" "_source.NumeroLogradouro_" "_source.ComplementoLogradouro' property='target.{Patient.Addresses(1).Street}' action='set' />
<assign value='"MS"' property='target.{Patient.Organizations(1).Organization.SDACodingStandard}' action='set' />
<assign value='source.CnesEstabelecimento' property='target.{Patient.Organizations(1).Organization.Code}' action='set' />
<assign value='source.NomeFantasiaEstabelecimento' property='target.{Patient.Organizations(1).Organization.Description}' action='set' />
<assign value='"VACIVIDA"' property='target.{Patient.Organizations(1).Organization.Address.City.SDACodingStandard}' action='set' />
<assign value='source.MunicipioEstabelecimento' property='target.{Patient.Organizations(1).Organization.Address.City.Code}' action='set' />
<assign value='source.MunicipioEstabelecimento' property='target.{Patient.Organizations(1).Organization.Address.City.Description}' action='set' />
<assign value='"MS"' property='target.{Vaccinations(1).EnteringOrganization.SDACodingStandard}' action='set' />
<assign value='source.CnesEstabelecimento' property='target.{Vaccinations(1).EnteringOrganization.Code}' action='set' />
<assign value='source.NomeFantasiaEstabelecimento' property='target.{Vaccinations(1).EnteringOrganization.Description}' action='set' />
<assign value='"VACIVIDA"' property='target.{Vaccinations(1).Priority.SDACodingStandard}' action='set' />
<assign value='source.GrupoAtendimento' property='target.{Vaccinations(1).Priority.Code}' action='set' />
<assign value='source.GrupoAtendimento' property='target.{Vaccinations(1).Priority.Description}' action='set' />
<assign value='"VACIVIDA"' property='target.{Vaccinations(1).DrugProduct.SDACodingStandard}' action='set' />
<assign value='source.IdImunobiologico' property='target.{Vaccinations(1).DrugProduct.Code}' action='set' />
<assign value='"VACINA COVID: "_source.Imunobiologico' property='target.{Vaccinations(1).DrugProduct.Description}' action='set' />
<assign value='source.Imunobiologico' property='target.{Vaccinations(1).DrugProduct.ProductName}' action='set' />
<assign value='source.Imunobiologico' property='target.{Vaccinations(1).DrugProduct.LabelName}' action='set' />
<assign value='source.Lote' property='target.{Vaccinations(1).RefillNumber}' action='set' />
<assign value='source.Lote' property='target.{Vaccinations(1).RefillDescription}' action='set' />
<assign value='source.CnesEstabelecimento' property='target.{Vaccinations(1).EnteredOn}' action='set' />
<assign value='"SES/SP"' property='target.{Vaccinations(1).FillerAssigningAuthority}' action='set' />
<assign value='source.IdDose' property='target.{Vaccinations(1).OrderItem.Code}' action='set' />
<assign value='source.Dose' property='target.{Vaccinations(1).OrderItem.Description}' action='set' />
<assign value='source.DataAplicacao' property='target.{Vaccinations(1).FromTime}' action='set' />
<assign value='"VACIVIDA"' property='target.{Vaccinations(1).EnteredBy.SDACodingStandard}' action='set' />
<assign value='source.CnesEstabelecimento' property='target.{Vaccinations(1).EnteredBy.Code}' action='set' />
<assign value='"VACIVIDA"' property='target.{Vaccinations(1).EnteredAt.SDACodingStandard}' action='set' />
<assign value='source.CnesEstabelecimento' property='target.{Vaccinations(1).EnteredAt.Code}' action='set' />
<assign value='source.NomeFantasiaEstabelecimento' property='target.{Vaccinations(1).EnteredAt.Description}' action='set' />
<assign value='"VACIVIDA"' property='target.{Vaccinations(1).EnteredAt.Address.City.SDACodingStandard}' action='set' />
<assign value='source.MunicipioEstabelecimento' property='target.{Vaccinations(1).EnteredAt.Address.City.Code}' action='set' />
<assign value='source.MunicipioEstabelecimento' property='target.{Vaccinations(1).EnteredAt.Address.City.Description}' action='set' />
<assign value='"COVID"' property='target.{Vaccinations(1).Indication}' action='set' />
<assign value='"ADMINISTERED"' property='target.{Vaccinations(1).Status}' action='set' />
<assign value='source.NomeFantasiaEstabelecimento' property='target.{Vaccinations(1).EnteredBy.Description}' action='set' />
<assign value='source.DataRegistro' property='target.{Vaccinations(1).AuthorizationTime}' action='set' />
<assign value='source.CRMComorbidade' property='target.{Vaccinations(1).Condition}' action='set' />
<assign value='source.ValidadeLote' property='target.{Vaccinations(1).Administrations(1).ExpiryDate}' action='set' />
<assign value='source.Lote' property='target.{Vaccinations(1).Administrations(1).LotNumber}' action='set' />
<assign value='"VACIVIDA"' property='target.{Vaccinations(1).Administrations(1).AdministeredAtLocation.SDACodingStandard}' action='set' />
<assign value='source.CnesEstabelecimento' property='target.{Vaccinations(1).Administrations(1).AdministeredAtLocation.Code}' action='set' />
<assign value='source.NomeFantasiaEstabelecimento' property='target.{Vaccinations(1).Administrations(1).AdministeredAtLocation.Description}' action='set' />
<assign value='"VACIVIDA"' property='target.{Vaccinations(1).Administrations(1).AdministeredAtLocation.Organization.SDACodingStandard}' action='set' />
<assign value='"SES/SP"' property='target.{Vaccinations(1).Administrations(1).AdministeredAtLocation.Organization.Code}' action='set' />
<assign value='"SES/SP"' property='target.{Vaccinations(1).Administrations(1).AdministeredAtLocation.Organization.Description}' action='set' />
<assign value='source.IdVacinacao' property='target.{Vaccinations(1).FillerId}' action='set' />
</transform>
}

}
