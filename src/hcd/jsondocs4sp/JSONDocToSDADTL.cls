Class hcd.jsondocs4sp.JSONDocToSDADTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsondocs4sp.JSONDocReq, EnsLib.EDI.XML.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsondocs4sp.JSONDocReq' targetClass='EnsLib.EDI.XML.Document' targetDocType='SDA3_schema:Container' create='new' language='objectscript' >
<annotation>Convert Patient Documentation to Hl7</annotation>
<assign value='source.idPaciente' property='target.{Patient.PatientNumbers(1).Number}' action='set' />
<assign value='"MRN"' property='target.{Patient.PatientNumbers(1).NumberType}' action='set' />
<assign value='source.cnes' property='target.{SendingFacility}' action='set' />
<assign value='source.cnes' property='target.{Patient.PatientNumbers(1).Organization.Code}' action='set' />
<assign value='"AddOrUpdate"' property='target.{Action}' action='set' />
<if condition='source.cpf &apos;= ""' >
<true>
<assign value='"SSN"' property='target.{Patient.PatientNumbers(2).NumberType}' action='set' />
<assign value='source.cpf' property='target.{Patient.PatientNumbers(2).Number}' action='set' />
</true>
</if>
<if condition='source.rg &apos;= ""' >
<true>
<assign value='"DL"' property='target.{Patient.PatientNumbers(3).NumberType}' action='set' />
<assign value='source.rg_" "_source.siglaEmissor_source.ufEmissor' property='target.{Patient.PatientNumbers(3).Number}' action='set' />
</true>
</if>
<if condition='source.cns &apos;= ""' >
<true>
<assign value='source.cns' property='target.{Patient.PatientNumbers(4).Number}' action='set' />
<assign value='"pat"' property='target.{Patient.PatientNumbers(4).NumberType}' action='set' />
</true>
</if>
</transform>
}

}
