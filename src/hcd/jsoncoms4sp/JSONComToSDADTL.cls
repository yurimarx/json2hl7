Class hcd.jsoncoms4sp.JSONComToSDADTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsoncoms4sp.JSONComReq, EnsLib.EDI.XML.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsoncoms4sp.JSONComReq' targetClass='EnsLib.EDI.XML.Document' targetDocType='SDA3_schema:Container' create='new' language='objectscript' >
<annotation>Convert Patient Doc to Hl7</annotation>
<assign value='source.idPaciente' property='target.{Patient.PatientNumbers(1).Number}' action='set' />
<assign value='"MRN"' property='target.{Patient.PatientNumbers(1).NumberType}' action='set' />
<assign value='source.cnes' property='target.{SendingFacility}' action='set' />
<assign value='"AddOrUpdate"' property='target.{Action}' action='set' />
<assign value='source.descricaoComunicacao2' property='target.{Patient.ContactInfo.WorkPhoneNumber}' action='set' />
<assign value='source.descricaoComunicacao' property='target.{Patient.ContactInfo.MobilePhoneNumber}' action='set' />
<assign value='source.cnes' property='target.{Patient.PatientNumbers(1).Organization.Code}' action='set' />
</transform>
}

}
