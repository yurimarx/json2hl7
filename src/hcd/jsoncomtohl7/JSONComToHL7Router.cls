/// 
Class hcd.jsoncomtohl7.JSONComToHL7Router Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="hcd.jsoncomtohl7.JSONComToHL7Prod">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="JSONComFileService"></constraint>
<constraint name="msgClass" value="hcd.jsoncomtohl7.JSONComHL7Req"></constraint>
<when condition="1">
<send transform="hcd.jsoncomtohl7.JSONComToHL7DTL" target="HL7FileOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
