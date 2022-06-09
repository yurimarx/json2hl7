Class hcd.jsontohl7.JSONToHL7Prod Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="hcd.jsontohl7.JSONToHL7Prod" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="JSONFileService" Category="" ClassName="hcd.jsontohl7.JSONFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/input/paciente/</Setting>
    <Setting Target="Adapter" Name="ArchivePath">/opt/user/output/paciente/</Setting>
  </Item>
  <Item Name="HL7FileOperation" Category="" ClassName="EnsLib.HL7.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/output/paciente/</Setting>
  </Item>
  <Item Name="MsgRouter" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsontohl7.JSONToHL7Router</Setting>
  </Item>
  <Item Name="JSONDocFileService" Category="" ClassName="hcd.jsondoctohl7.JSONDocFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="ArchivePath">/opt/user/output/documento/</Setting>
    <Setting Target="Adapter" Name="FilePath">/opt/user/input/documento/</Setting>
  </Item>
  <Item Name="MsgRouterDoc" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsondoctohl7.JSONDocToHL7Router</Setting>
  </Item>
  <Item Name="JSONComFileService" Category="" ClassName="hcd.jsoncomtohl7.JSONComFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="ArchivePath">/opt/user/output/meiocomunicacao/</Setting>
    <Setting Target="Adapter" Name="FilePath">/opt/user/input/meiocomunicacao/</Setting>
  </Item>
  <Item Name="MsgRouterCom" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsoncomtohl7.JSONComToHL7Router</Setting>
  </Item>
  <Item Name="JSONDiagFileService" Category="" ClassName="hcd.jsondiagtohl7.JSONDiagFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="ArchivePath">/opt/user/output/diagnostico/</Setting>
    <Setting Target="Adapter" Name="FilePath">/opt/user/input/diagnostico/</Setting>
  </Item>
  <Item Name="MsgRouterDiag" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsondiagtohl7.JSONDiagToHL7Router</Setting>
  </Item>
  <Item Name="JSONAdmFileService" Category="" ClassName="hcd.jsonadmtohl7.JSONAdmFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="ArchivePath">/opt/user/output/admissao/</Setting>
    <Setting Target="Adapter" Name="FilePath">/opt/user/input/admissao/</Setting>
  </Item>
  <Item Name="MsgRouterAdm" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsonadmtohl7.JSONAdmToHL7Router</Setting>
  </Item>
  <Item Name="HL7FileDocOperation" Category="" ClassName="EnsLib.HL7.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/output/documento/</Setting>
  </Item>
  <Item Name="HL7FileComOperation" Category="" ClassName="EnsLib.HL7.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/output/meiocomunicacao/</Setting>
  </Item>
  <Item Name="HL7FileDiagOperation" Category="" ClassName="EnsLib.HL7.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/output/diagnostico/</Setting>
  </Item>
  <Item Name="HL7FileAdmOperation" Category="" ClassName="EnsLib.HL7.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/output/admissao/</Setting>
  </Item>
</Production>
}

}
