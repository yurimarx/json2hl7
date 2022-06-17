/// 
Class hcd.jsonadms4sp.JSONAdmToSDARouter Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="hcd.jsons4sp.JSONS4SPProd">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="JSONAdmFileService"></constraint>
<constraint name="msgClass" value="hcd.jsonadms4sp.JSONAdmReq"></constraint>
<when condition="1">
<send transform="hcd.jsonadms4sp.JSONAdmToSDADTL" target="SDAFileAdmOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
