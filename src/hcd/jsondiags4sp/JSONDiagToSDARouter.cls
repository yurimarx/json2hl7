/// 
Class hcd.jsondiags4sp.JSONDiagToSDARouter Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="hcd.jsons4sp.JSONS4SPProd">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="JSONDiagFileService"></constraint>
<constraint name="msgClass" value="hcd.jsondiags4sp.JSONDiagReq"></constraint>
<when condition="1">
<send transform="hcd.jsondiags4sp.JSONDiagToSDADTL" target="SDAFileDiagOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
