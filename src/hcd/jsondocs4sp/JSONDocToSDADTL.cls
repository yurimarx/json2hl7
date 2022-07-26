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
<assign value='"S4SP"' property='target.{Patient.PatientNumbers(1).Organization.SDACodingStandard}' action='set' />
<assign value='source.autoridade' property='target.{Patient.PatientNumbers(1).Organization.Code}' action='set' />
<assign value='source.cnes' property='target.{SendingFacility}' action='set' />
<assign value='"AddOrUpdate"' property='target.{Action}' action='set' />
<if condition='source.tipoDocumento = "CIC"' >
<true>
<assign value='"ME"' property='target.{Patient.PatientNumbers(2).Organization.SDACodingStandard}' action='set' />
<assign value='"SSN"' property='target.{Patient.PatientNumbers(2).NumberType}' action='set' />
<assign value='source.numeroDocumento' property='target.{Patient.PatientNumbers(2).Number}' action='set' />
</true>
</if>
<if condition='source.tipoDocumento = "RG"' >
<true>
<assign value='"MJ"' property='target.{Patient.PatientNumbers(2).Organization.SDACodingStandard}' action='set' />
<assign value='"PT"' property='target.{Patient.PatientNumbers(2).NumberType}' action='set' />
<assign value='source.numeroDocumento_" "_source.siglaEmissor_source.ufEmissor' property='target.{Patient.PatientNumbers(2).Number}' action='set' />
</true>
</if>
<if condition='source.tipoDocumento = "CNS"' >
<true>
<assign value='"MS"' property='target.{Patient.PatientNumbers(2).Organization.SDACodingStandard}' action='set' />
<assign value='source.numeroDocumento' property='target.{Patient.PatientNumbers(2).Number}' action='set' />
<assign value='"SN"' property='target.{Patient.PatientNumbers(2).NumberType}' action='set' />
</true>
</if>
<if condition='source.tipoDocumento = "CM"' > 
<true>
<assign value='"MS"' property='target.{Patient.PatientNumbers(2).Organization.SDACodingStandard}' action='set' />
<assign value='source.numeroDocumento' property='target.{Patient.PatientNumbers(2).Number}' action='set' />
<assign value='"DL"' property='target.{Patient.PatientNumbers(2).NumberType}' action='set' />
</true>
</if>
</transform>
}

}
