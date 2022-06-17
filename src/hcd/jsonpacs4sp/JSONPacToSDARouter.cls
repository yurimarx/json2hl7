/// 
Class hcd.jsonpacs4sp.JSONPacToSDARouter Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="hcd.jsons4sp.JSONS4SPProd">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="JSONPacFileService"></constraint>
<constraint name="msgClass" value="hcd.jsonpacs4sp.JSONPacReq"></constraint>
<when condition="1">
<send transform="hcd.jsonpacs4sp.JSONPacToSDADTL" target="SDAFilePacOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
