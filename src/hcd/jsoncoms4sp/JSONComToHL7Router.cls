/// 
Class hcd.jsoncoms4sp.JSONComToHL7Router Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="hcd.jsons4sp.JSONS4SPProd">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="JSONComFileService"></constraint>
<constraint name="msgClass" value="hcd.jsoncoms4sp.JSONComReq"></constraint>
<when condition="1">
<send transform="hcd.jsoncoms4sp.JSONComToHL7DTL" target="HL7FileComOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
