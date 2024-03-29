/// 
Class hcd.jsonprocs4sp.JSONProcToSDARouter Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="hcd.jsons4sp.JSONS4SPProd">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="JSONProcFileService"></constraint>
<constraint name="msgClass" value="hcd.jsonprocs4sp.JSONProcReq"></constraint>
<when condition="1">
<send transform="hcd.jsonprocs4sp.JSONProcToSDADTL" target="SDAFileProcOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
