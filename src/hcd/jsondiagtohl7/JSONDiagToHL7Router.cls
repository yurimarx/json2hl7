/// 
Class hcd.jsondiagtohl7.JSONDiagToHL7Router Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="hcd.jsontohl7.JSONToHL7Prod">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="JSONDiagFileService"></constraint>
<constraint name="msgClass" value="hcd.jsondiagtohl7.JSONDiagHL7Req"></constraint>
<when condition="1">
<send transform="hcd.jsondiagtohl7.JSONDiagToHL7DTL" target="HL7FileDiagOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
