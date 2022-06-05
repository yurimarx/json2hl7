/// 
Class hcd.jsondoctohl7.JSONDocToHL7Router Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="hcd.jsondoctohl7.JSONDocToHL7Prod">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="JSONDocFileService"></constraint>
<constraint name="msgClass" value="hcd.jsondoctohl7.JSONDocHL7Req"></constraint>
<when condition="1">
<send transform="hcd.jsondoctohl7.JSONDocToHL7DTL" target="HL7FileOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
