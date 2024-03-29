Class hcd.jsonvacivida.SQLVacividaService Extends Ens.BusinessService
{

Parameter ADAPTER = "EnsLib.SQL.InboundAdapter";

Method OnProcessInput(pInput As EnsLib.SQL.Snapshot, pOutput As %RegisteredObject) As %Status
{

    set req = ##class(hcd.jsonvacivida.VacividaReq).%New()
    set req.IdPaciente = pInput.Get("IdPaciente")
    set req.IdVacinacao = pInput.Get("IdVacinacao")
    set req.CnsPaciente = pInput.Get("CnsPaciente")
    set req.NomePaciente = pInput.Get("NomePaciente")
    set req.NomeMae = pInput.Get("NomeMae")
    set req.DataNascimento = $TRANSLATE(pInput.Get("DataNascimento")," ", "T")
    set req.Sexo = pInput.Get("Sexo")
    set req.Raca = pInput.Get("Raca")
    set req.Etnia = pInput.Get("Etnia")
    set req.FlGestante = pInput.Get("FlGestante")
    set req.FlPuerpera = pInput.Get("FlPuerpera")
    set req.GrupoAtendimento = pInput.Get("GrupoAtendimento")
    set req.Uf = pInput.Get("Uf")
    set req.Municipio = pInput.Get("Municipio")
    set req.Logradouro = pInput.Get("Logradouro")
    set req.NumeroLogradouro = pInput.Get("NumeroLogradouro")
    set req.ComplementoLogradouro = pInput.Get("ComplementoLogradouro")
    set req.BairroLogradouro = pInput.Get("BairroLogradouro")
    set req.Ddd = pInput.Get("Ddd")
    set req.Telefone = pInput.Get("Telefone")
    set req.CnesEstabelecimento = pInput.Get("CnesEstabelecimento")
    set req.NomeFantasiaEstabelecimento = pInput.Get("NomeFantasiaEstabelecimento")
    set req.MunicipioEstabelecimento = pInput.Get("MunicipioEstabelecimento")
    set req.Gve = pInput.Get("Gve")
    set req.CnsVacinador = pInput.Get("CnsVacinador")
    set req.NomeVacinador = pInput.Get("NomeVacinador")
    set req.DddVacinador = pInput.Get("DddVacinador")
    set req.TelefoneVacinador = pInput.Get("TelefoneVacinador")
    set req.IdImunobiologico = pInput.Get("IdImunobiologico")
    set req.Imunobiologico = pInput.Get("Imunobiologico")
    set req.Lote = pInput.Get("Lote")
    set req.ValidadeLote = pInput.Get("ValidadeLote")
    set req.IdDose = pInput.Get("IdDose")
    set req.Dose = pInput.Get("Dose")
    set req.DoseAdicional = pInput.Get("DoseAdicional")
    set req.IdEstrategia = pInput.Get("IdEstrategia")
    set req.Estrategia = pInput.Get("Estrategia")
    set req.DataAplicacao = $TRANSLATE(pInput.Get("DataAplicacao")," ","T")
    set req.DataRegistro = $TRANSLATE(pInput.Get("DataRegistro")," ","T")
    set req.DataAprazamento = $TRANSLATE(pInput.Get("DataAprazamento"), " ", "T")
    set req.CodeDataSus = pInput.Get("CodeDataSus") 
    set req.CRMComorbidade = pInput.Get("CRMComorbidade")
    set req.FlagInvalido = pInput.Get("FlagInvalido")
    set req.DataInvalido = $TRANSLATE(pInput.Get("DataInvalido"), " ", "T")
    set req.DescricaoBPC = pInput.Get("DescricaoBPC")
    set req.IdRegional = pInput.Get("IdRegional")
    set req.DescricaoRegional = pInput.Get("DescricaoRegional")
    set req.DataAtualizacao = $TRANSLATE(pInput.Get("DataAtualizacao"), " ", "T")
    set req.FlagAtivo = pInput.Get("FlagAtivo")
    set req.IdUFPrimeiraDose = pInput.Get("IdUFPrimeiraDose")
    set req.IdPaisPrimeiraDose = pInput.Get("IdPaisPrimeiraDose")
    set req.IdUFSegundaDose = pInput.Get("IdUFSegundaDose")
    set req.IdPaisSegundaDose = pInput.Get("IdPaisSegundaDose")
    set req.FlagDoseAdicional = pInput.Get("FlagDoseAdicional")
    set req.IdMotivoDoseAdicional = pInput.Get("IdMotivoDoseAdicional")
    set req.DescricaoMotivoDoseAdicional = pInput.Get("DescricaoMotivoDoseAdicional")
    set req.CdDoseAdicional = pInput.Get("CdDoseAdicional")
    set sc = ..SendRequestAsync("SQLVacividaToSDARouter", req, "Registro do vacivida")
    Quit sc
}

}
