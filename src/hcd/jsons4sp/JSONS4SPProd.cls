Class hcd.jsons4sp.JSONS4SPProd Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="hcd.jsons4sp.JSONS4SPProd" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="JSONPacFileService" Category="" ClassName="hcd.jsonpacs4sp.JSONPacFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/input/paciente/</Setting>
    <Setting Target="Adapter" Name="ArchivePath"></Setting>
  </Item>
  <Item Name="JSONFisicoFileService" Category="" ClassName="hcd.jsonfisicos4sp.JSONFisicoFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/input/fisico/</Setting>
    <Setting Target="Adapter" Name="ArchivePath"></Setting>
  </Item>
  <Item Name="JSONMedidaCorpoFileService" Category="" ClassName="hcd.jsonmedidacorpos4sp.JSONMedidaCorpoFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/input/medidacorpo/</Setting>
    <Setting Target="Adapter" Name="ArchivePath"></Setting>
  </Item>
  <Item Name="HL7FilePacOperation" Category="" ClassName="EnsLib.HL7.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/output/paciente/</Setting>
  </Item>
  <Item Name="MsgHL7RouterPac" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsonpacs4sp.JSONPacToHL7Router</Setting>
  </Item>
  <Item Name="JSONDocFileService" Category="" ClassName="hcd.jsondocs4sp.JSONDocFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="ArchivePath"></Setting>
    <Setting Target="Adapter" Name="FilePath">/opt/user/input/documento/</Setting>
  </Item>
  <Item Name="MsgHL7RouterDoc" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsondoctohl7.JSONDocToHL7Router</Setting>
  </Item>
  <Item Name="JSONComFileService" Category="" ClassName="hcd.jsoncoms4sp.JSONComFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="ArchivePath"></Setting>
    <Setting Target="Adapter" Name="FilePath">/opt/user/input/meiocomunicacao/</Setting>
  </Item>
  <Item Name="MsgHL7RouterCom" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsoncomsps4.JSONComToHL7Router</Setting>
  </Item>
  <Item Name="JSONDiagFileService" Category="" ClassName="hcd.jsondiags4sp.JSONDiagFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="ArchivePath"></Setting>
    <Setting Target="Adapter" Name="FilePath">/opt/user/input/diagnostico/</Setting>
  </Item>
  <Item Name="MsgHL7RouterDiag" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsondiags4sp.JSONDiagToHL7Router</Setting>
  </Item>
  <Item Name="JSONAdmFileService" Category="" ClassName="hcd.jsonadms4sp.JSONAdmFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="ArchivePath"></Setting>
    <Setting Target="Adapter" Name="FilePath">/opt/user/input/admissao/</Setting>
    <Setting Target="Host" Name="Format">SDA</Setting>
  </Item>
  <Item Name="MsgHL7RouterAdm" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsonadms4sp.JSONAdmToHL7Router</Setting>
  </Item>
  <Item Name="MsgSDARouterDoc" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsondocs4sp.JSONDocToSDARouter</Setting>
  </Item>
  <Item Name="MsgSDARouterFisico" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsonfisicos4sp.JSONFisicoToSDARouter</Setting>
  </Item>
  <Item Name="MsgSDARouterMedidaCorpo" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsonmedidacorpos4sp.JSONMedidaCorpoToSDARouter</Setting>
  </Item>
  <Item Name="MsgSDARouterProc" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsonprocs4sp.JSONProcToSDARouter</Setting>
  </Item>
  <Item Name="MsgSDARouterCom" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsoncoms4sp.JSONComToSDARouter</Setting>
  </Item>
  <Item Name="MsgSDARouterDiag" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsondiags4sp.JSONDiagToSDARouter</Setting>
  </Item>
  <Item Name="MsgSDARouterPac" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsonpacs4sp.JSONPacToSDARouter</Setting>
  </Item>
  <Item Name="MsgSDARouterVacina" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsonvacinas4sp.JSONVacinaToSDARouter</Setting>
  </Item>
  <Item Name="MsgSDARouterAdm" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsonadms4sp.JSONAdmToSDARouter</Setting>
  </Item>
  <Item Name="MsgSDARouterAlergia" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsonalergias4sp.JSONAlergiaToSDARouter</Setting>
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
  <Item Name="SDAFileProcOperation" Category="" ClassName="EnsLib.EDI.XML.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/output/procedimento/</Setting>
    <Setting Target="Host" Name="Format"></Setting>
    <Setting Target="Host" Name="Filename">%f_%Q</Setting>
  </Item>
  <Item Name="SDAFileFisicoOperation" Category="" ClassName="EnsLib.EDI.XML.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/output/fisico/</Setting>
    <Setting Target="Host" Name="Format"></Setting>
    <Setting Target="Host" Name="Filename">%f_%Q</Setting>
  </Item>
  <Item Name="JSONProcFileService" Category="" ClassName="hcd.jsonprocs4sp.JSONProcFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="ArchivePath"></Setting>
    <Setting Target="Adapter" Name="FilePath">/opt/user/input/procedimento/</Setting>
  </Item>
  <Item Name="JSONAlergiaFileService" Category="" ClassName="hcd.jsonalergias4sp.JSONAlergiaFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="ArchivePath"></Setting>
    <Setting Target="Adapter" Name="FilePath">/opt/user/input/alergia/</Setting>
  </Item>
  <Item Name="JSONVacinaFileService" Category="" ClassName="hcd.jsonvacinas4sp.JSONVacinaFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="ArchivePath"></Setting>
    <Setting Target="Adapter" Name="FilePath">/opt/user/input/vacina/</Setting>
  </Item>
  <Item Name="JSONFamiliarFileService" Category="" ClassName="hcd.jsonfamiliars4sp.JSONFamiliarFileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="ArchivePath"></Setting>
    <Setting Target="Adapter" Name="FilePath">/opt/user/input/familiar/</Setting>
  </Item>
  <Item Name="SDAFileAdmOperation" Category="" ClassName="EnsLib.EDI.XML.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/output/admissao/</Setting>
  </Item>
  <Item Name="SDAFileFamiliarOperation" Category="" ClassName="EnsLib.EDI.XML.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/output/familiar/</Setting>
  </Item>
  <Item Name="SDAFileMedidaCorpoOperation" Category="" ClassName="EnsLib.EDI.XML.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/output/medidacorpo/</Setting>
  </Item>
  <Item Name="SDAFilePacOperation" Category="" ClassName="EnsLib.EDI.XML.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/output/paciente/</Setting>
  </Item>
  <Item Name="SDAFileComOperation" Category="" ClassName="EnsLib.EDI.XML.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/output/meiocomunicacao/</Setting>
  </Item>
  <Item Name="SDAFileDiagOperation" Category="" ClassName="EnsLib.EDI.XML.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/output/diagnostico/</Setting>
  </Item>
  <Item Name="SDAFileDocOperation" Category="" ClassName="EnsLib.EDI.XML.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/output/documento/</Setting>
  </Item>
  <Item Name="SDAVacividaFileOperation" Category="" ClassName="EnsLib.EDI.XML.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/opt/user/output/trash/</Setting>
    <Setting Target="Host" Name="Filename">%f_%Q</Setting>
  </Item>
  <Item Name="SQLVacividaToSDARouter" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">hcd.jsonvacivida.SQLVacividaToSDARouter</Setting>
  </Item>
  <Item Name="SQLVacividaService" Category="" ClassName="hcd.jsonvacivida.SQLVacividaService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="DSN">User</Setting>
    <Setting Target="Adapter" Name="Query">SELECT 
ID, BairroLogradouro, CRMComorbidade, CdDoseAdicional, CnesEstabelecimento, CnsPaciente, CnsVacinador, CodeDataSus, ComplementoLogradouro, Cormobidades, DataAplicacao, DataAprazamento, DataAtualizacao, DataInvalido, DataNascimento, DataRegistro, Ddd, DddVacinador, DescricaoBPC, DescricaoMotivoDoseAdicional, DescricaoRegional, Dose, DoseAdicional, Estrategia, Etnia, FlGestante, FlPuerpera, FlagAtivo, FlagDoseAdicional, FlagInvalido, GrupoAtendimento, Gve, IdDose, IdEstrategia, IdImunobiologico, IdMotivoDoseAdicional, IdPaciente, IdPaisPrimeiraDose, IdPaisSegundaDose, IdRegional, IdUFPrimeiraDose, IdUFSegundaDose, IdVacinacao, Imunobiologico, Logradouro, Lote, Municipio, MunicipioEstabelecimento, NomeFantasiaEstabelecimento, NomeMae, NomePaciente, NomeVacinador, NumeroLogradouro, Raca, SendSDA, Sexo, Telefone, TelefoneVacinador, Uf, ValidadeLote
FROM hcd_jsonvacivida.Vacivida WHERE SendSDA = 1</Setting>
    <Setting Target="Adapter" Name="DeleteQuery">update hcd_jsonvacivida.Vacivida SET SendSDA = 0 where id = ?</Setting>
  </Item> 
</Production>
}

}
