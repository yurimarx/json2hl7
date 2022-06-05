/// 
Class hcd.jsontohl7.JSONToHL7Router Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="hcd.jsontohl7.JSONToHL7Prod">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="JSONFileService"></constraint>
<constraint name="msgClass" value="hcd.jsontohl7.JSONHL7Req"></constraint>
<when condition="1">
<send transform="hcd.jsontohl7.JSONToHL7DTL" target="HL7FileOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
