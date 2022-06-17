/// 
Class hcd.jsondoctos4sp.JSONDocToHL7Router Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="hcd.jsons4sp.JSONS4SPProd">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="JSONDocFileService"></constraint>
<constraint name="msgClass" value="hcd.jsondocs4sp.JSONDocReq"></constraint>
<when condition="1">
<send transform="hcd.jsondocs4sp.JSONDocToHL7DTL" target="HL7FileDocOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
