/// 
Class hcd.jsonadmtohl7.JSONAdmToHL7Router Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="hcd.jsontohl7.JSONToHL7Prod">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="JSONAdmFileService"></constraint>
<constraint name="msgClass" value="hcd.jsonadmtohl7.JSONAdmHL7Req"></constraint>
<when condition="1">
<send transform="hcd.jsonadmtohl7.JSONAdmToHL7DTL" target="HL7FileAdmOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
