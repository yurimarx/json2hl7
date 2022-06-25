/// 
Class hcd.jsonagendas4sp.JSONAgendaToSDARouter Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="hcd.jsons4sp.JSONS4SPProd">
<ruleSet name="" effectiveBegin="" effectiveEnd=""> 
<rule name="">
<constraint name="source" value="JSONAgendaFileService"></constraint>
<constraint name="msgClass" value="hcd.jsonagendas4sp.JSONAgendaReq"></constraint>
<when condition="1">
<send transform="hcd.jsonagendas4sp.JSONAgendaToSDADTL" target="SDAFileAgendaOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
