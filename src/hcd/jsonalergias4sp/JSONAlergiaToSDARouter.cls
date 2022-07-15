/// 
Class hcd.jsonalergias4sp.JSONAlergiaToSDARouter Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="hcd.jsons4sp.JSONS4SPProd">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="JSONAlergiaFileService"></constraint>
<constraint name="msgClass" value="hcd.jsonalergias4sp.JSONAlergiaReq"></constraint>
<when condition="1">
<send transform="hcd.jsonalergias4sp.JSONAlergiaToSDADTL" target="SDAFileAlergiaOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
