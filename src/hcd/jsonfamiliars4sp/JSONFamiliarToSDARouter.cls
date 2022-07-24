/// 
Class hcd.jsonfamiliars4sp.JSONFamiliarToSDARouter Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="hcd.jsons4sp.JSONS4SPProd">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="JSONFamiliarFileService"></constraint>
<constraint name="msgClass" value="hcd.jsonfamiliars4sp.JSONFamiliarReq"></constraint>
<when condition="1">
<send transform="hcd.jsonfamiliars4sp.JSONFamiliarToSDADTL" target="SDAFileFamiliarOperation"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
