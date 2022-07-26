Class hcd.jsonfamiliars4sp.JSONFamiliarToSDADTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsonfamiliars4sp.JSONFamiliarReq, EnsLib.EDI.XML.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsonfamiliars4sp.JSONFamiliarReq' targetClass='EnsLib.EDI.XML.Document' targetDocType='SDA3_schema:Container' create='new' language='objectscript' >
<annotation>Convert Patient Familiar History to SDA</annotation>
<assign value='source.idPaciente' property='target.{Patient.PatientNumbers(1).Number}' action='set' />
<assign value='"MRN"' property='target.{Patient.PatientNumbers(1).NumberType}' action='set' />
<assign value='source.cnes' property='target.{SendingFacility}' action='set' />
<assign value='"AddOrUpdate"' property='target.{Action}' action='set' />
<assign value='source.autoridade' property='target.{Patient.PatientNumbers(1).Organization.Code}' action='set' />
<assign value='source.dataAlteracao' property='target.{FamilyHistories(1).UpdatedOn}' action='set' />
<assign value='"S4SP"' property='target.{FamilyHistories(1).FamilyMember.SDACodingStandard}' action='set' />
<assign value='source.indicadorParentesco' property='target.{FamilyHistories(1).FamilyMember.Code}' action='set' />
<assign value='source.parentesco' property='target.{FamilyHistories(1).FamilyMember.Description}' action='set' />
<assign value='"S4SP"' property='target.{FamilyHistories(1).Diagnosis.SDACodingStandard}' action='set' />
<assign value='source.dataInclusao' property='target.{FamilyHistories(1).EnteredOn}' action='set' />
<if condition='source.codigoAntecedente = "OUT"' >
<true>
<assign value='source.codigoAntecedente' property='target.{FamilyHistories(1).Diagnosis.Code}' action='set' />
<assign value='source.descricaoOutros' property='target.{FamilyHistories(1).Diagnosis.Description}' action='set' />
</true>
<false>
<assign value='source.codigoAntecedente' property='target.{FamilyHistories(1).Diagnosis.Code}' action='set' />
<assign value='source.descricaoAntecedente' property='target.{FamilyHistories(1).Diagnosis.Description}' action='set' />
</false>
</if>
<assign value='source.dataLiberacao' property='target.{FamilyHistories(1).FromTime}' action='set' />
<assign value='source.dataAlteracao' property='target.{FamilyHistories(1).ToTime}' action='set' />
<assign value='"S4SP"' property='target.{Patient.PatientNumbers(1).Organization.SDACodingStandard}' action='set' />
</transform>
}

}
