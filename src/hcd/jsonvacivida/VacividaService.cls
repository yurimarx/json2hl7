Class hcd.jsonvacivida.VacividaService
{

/// Load vacivida API data into vacivida table
ClassMethod LoadData() As %Status
{
    Set sc = $$$OK

    Set periods = ##class(hcd.util.DateUtils).GetMonthPeriods(2021,2022)
    
    Set periodsIter = periods.%GetIterator()

    While periodsIter.%GetNext(.key, .period) {
        
        Set data = ..GetData(0, period.StartDate, period.EndDate)

        Set iter = data.Data.%GetIterator()

        While iter.%GetNext(.key, .value) {
            set vacivida = ##class(hcd.jsonvacivida.Vacivida).%New()
            set vacivida.IdPaciente = value.IdPaciente
            set vacivida.IdVacinacao = value.IdVacinacao
            set vacivida.CnsPaciente = value.CnsPaciente
            set vacivida.NomePaciente = value.NomePaciente
            set vacivida.NomeMae = value.NomeMae
            set vacivida.DataNascimento = $TRANSLATE(value.DataNascimento, " ", "T")
            set vacivida.Sexo = value.Sexo
            set vacivida.Raca = value.Raca
            set vacivida.Etnia = value.Etnia
            set vacivida.FlGestante = value.FlGestante
            set vacivida.FlPuerpera = value.FlPuerpera
            set vacivida.GrupoAtendimento = value.GrupoAtendimento
            set vacivida.Uf = value.Uf
            set vacivida.Municipio = value.Municipio
            set vacivida.Logradouro = value.Logradouro
            set vacivida.NumeroLogradouro = value.NumeroLogradouro
            set vacivida.ComplementoLogradouro = value.ComplementoLogradouro
            set vacivida.BairroLogradouro = value.BairroLogradouro
            set vacivida.Ddd = value.Ddd
            set vacivida.Telefone = value.Telefone
            set vacivida.CnesEstabelecimento = value.CnesEstabelecimento
            set vacivida.NomeFantasiaEstabelecimento = value.NomeFantasiaEstabelecimento
            set vacivida.MunicipioEstabelecimento = value.MunicipioEstabelecimento
            set vacivida.Gve = value.Gve
            set vacivida.CnsVacinador = value.CnsVacinador
            set vacivida.NomeVacinador = value.NomeVacinador
            set vacivida.DddVacinador = value.DddVacinador
            set vacivida.TelefoneVacinador = value.TelefoneVacinador
            set vacivida.IdImunobiologico = value.IdImunobiologico
            set vacivida.Imunobiologico = value.Imunobiologico
            set vacivida.Lote = value.Lote
            set vacivida.ValidadeLote = value.ValidadeLote
            set vacivida.IdDose = value.IdDose
            set vacivida.Dose = value.Dose
            set vacivida.DoseAdicional = value.DoseAdicional
            set vacivida.IdEstrategia = value.IdEstrategia
            set vacivida.Estrategia = value.Estrategia 
            set vacivida.DataAplicacao = $TRANSLATE(value.DataAplicacao, " ", "T")
            set vacivida.DataRegistro = $TRANSLATE(value.DataRegistro, " ", "T")
            set vacivida.DataAprazamento = $TRANSLATE(value.DataAprazamento, " ", "T")
            set vacivida.CodeDataSus = value.CodeDataSus
            set vacivida.CRMComorbidade = value.CRMComorbidade
            set vacivida.FlagInvalido = value.FlagInvalido
            set vacivida.DataInvalido = $TRANSLATE(value.DataInvalido, " ", "T")
            set vacivida.DescricaoBPC = value.DescricaoBPC
            set vacivida.IdRegional = value.IdRegional
            set vacivida.DescricaoRegional = value.DescricaoRegional
            set vacivida.DataAtualizacao = $TRANSLATE(value.DataAtualizacao, " ", "T")
            set vacivida.FlagAtivo = value.FlagAtivo
            set vacivida.IdUFPrimeiraDose = value.IdUFPrimeiraDose
            set vacivida.IdPaisPrimeiraDose = value.IdPaisPrimeiraDose
            set vacivida.IdUFSegundaDose = value.IdUFSegundaDose
            set vacivida.IdPaisSegundaDose = value.IdPaisSegundaDose
            set vacivida.FlagDoseAdicional = value.FlagDoseAdicional
            set vacivida.IdMotivoDoseAdicional = value.IdMotivoDoseAdicional
            set vacivida.DescricaoMotivoDoseAdicional = value.DescricaoMotivoDoseAdicional
            set vacivida.CdDoseAdicional = value.CdDoseAdicional
            set vacivida.SendSDA = 0 
            set sc = vacivida.%Save()
        }
    }
    
    Return sc
}

ClassMethod GetData(Page As %Integer, StartDate As %String, EndDate As %String) As %DynamicObject
{
    set request=##class(%Net.HttpRequest).%New()
    set request.ContentType = "application/json"
    do request.SetHeader("AccessToken", ##class(hcd.jsonvacivida.LoginVacivida).GetVacividaToken())
    set request.Server="servicovacivida.homologacao.sp.gov.br"
    set request.Https=0
    set path = "/municipio/consulta-vacinacao-nominal-todos/"_Page_"/"_StartDate_"/"_EndDate_"?idGve=B66C4B624545840AE053D065C70A17A1&idMunicipio=B66C4B623E7A840AE053D065C70A17A1"
    set status=request.Get(path)
    set httpResponse = request.HttpResponse
    set response = ##class(%DynamicObject).%FromJSON(httpResponse.Data)
    
    Return response
}

}
