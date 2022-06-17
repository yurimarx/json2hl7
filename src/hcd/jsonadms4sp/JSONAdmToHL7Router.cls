/// 
Class hcd.jsonadms4sp.JSONAdmToHL7Router Extends Ens.Rule.Definition
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
<send transform="hcd.jsonadms4sp.JSONAdmToHL7DTL" target="HL7FileAdmOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
