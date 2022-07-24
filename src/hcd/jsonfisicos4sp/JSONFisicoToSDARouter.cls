/// 
Class hcd.jsonfisicos4sp.JSONFisicoToSDARouter Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="hcd.jsons4sp.JSONS4SPProd">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="JSONFisicoFileService"></constraint>
<constraint name="msgClass" value="hcd.jsonfisicos4sp.JSONFisicoReq"></constraint>
<when condition="1">
<send transform="hcd.jsonfisicos4sp.JSONFisicoToSDADTL" target="SDAFileFisicoOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
