/// 
Class hcd.jsonvacinas4sp.JSONVacinaToSDARouter Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="hcd.jsons4sp.JSONS4SPProd">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="JSONVacinaFileService"></constraint>
<constraint name="msgClass" value="hcd.jsonvacinas4sp.JSONVacinaReq"></constraint>
<when condition="1">
<send transform="hcd.jsonvacinas4sp.JSONVacinaToSDADTL" target="SDAFileVacinaOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
