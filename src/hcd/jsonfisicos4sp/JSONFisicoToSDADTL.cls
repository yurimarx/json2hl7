Class hcd.jsonfisicos4sp.JSONFisicoToSDADTL Extends Ens.DataTransformDTL [ DependsOn = (hcd.jsonfisicos4sp.JSONFisicoReq, EnsLib.EDI.XML.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='hcd.jsonfisicos4sp.JSONFisicoReq' targetClass='EnsLib.EDI.XML.Document' targetDocType='SDA3_schema:Container' create='new' language='objectscript' >
<annotation>Convert Patient Phisical Exams to SDA</annotation>
<assign value='source.idPaciente' property='target.{Patient.PatientNumbers(1).Number}' action='set' />
<assign value='"MRN"' property='target.{Patient.PatientNumbers(1).NumberType}' action='set' />
<assign value='source.autoridade' property='target.{Patient.PatientNumbers(1).Organization.Code}' action='set' />
<assign value='"S4SP"' property='target.{Patient.PatientNumbers(1).Organization.SDACodingStandard}' action='set' />
<assign value='source.cnes' property='target.{SendingFacility}' action='set' />
<assign value='"AddOrUpdate"' property='target.{Action}' action='set' />
<foreach property='source.indicadoresFisicos()' key='idx' >
<assign value='source.dataAlteracao' property='target.{PhysicalExams(idx).UpdatedOn}' action='set' />
<assign value='source.dataLiberacao' property='target.{PhysicalExams(idx).ToTime}' action='set' />
<assign value='source.dataInclusao' property='target.{PhysicalExams(idx).FromTime}' action='set' />
<assign value='source.indicadoresFisicos.(idx).indicador' property='target.{PhysicalExams(idx).PhysExamCode}' action='set' />
<assign value='source.indicadoresFisicos.(idx).valorIndicador' property='target.{PhysicalExams(idx).PhysExamObs}' action='set' />
</foreach>
</transform>
}

}
