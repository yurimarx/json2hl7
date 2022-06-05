Class hcd.jsontohl7.JSONFileService Extends Ens.BusinessService
{

Parameter ADAPTER = "EnsLib.File.InboundAdapter";

Method OnProcessInput(pInput As %FileCharacterStream, pOutput As %RegisteredObject) As %Status
{
    Set tsc=$$$OK
    
    Set jsonContent = ""
    
    While 'pInput.AtEnd {
        Set jsonContent = jsonContent_pInput.ReadLine()
    }
    
    Set jsonObject = ##class(%DynamicAbstractObject).%FromJSON(jsonContent)

    Set req = ##class(hcd.jsontohl7.JSONHL7Req).%New()

    Set req.idPaciente = jsonObject."0".paciId
    Set req.matricula = jsonObject."0".matricula
    Set req.nome = $PIECE(jsonObject."0".nome," ")
    Set req.sobrenome = $PIECE(jsonObject."0".nome," ", 2)
    Set req.nomeFamilia = $PIECE(jsonObject."0".nome," ", 3)
    Set req.nomeSocial = jsonObject."0".nomeSocial
    Set req.dtNasc = $System.SQL.TODATE(jsonObject."0".dtNasc,"DD/MM/YYYY")
    Set req.tpSexo = jsonObject."0".tpSexo
    Set req.sexo = jsonObject."0".sexo
    Set req.origem = jsonObject."0".origem
    Set req.uf = jsonObject."0".uf
    Set req.muniSq = jsonObject."0".muniSq
    Set req.muniDs = jsonObject."0".muniDs
    Set req.naturalidade = jsonObject."0".naturalidade
    Set req.mae = jsonObject."0".mae
    Set req.pai = jsonObject."0".pai
    Set req.conjuge = jsonObject."0".conjuge
    Set req.responsavel = jsonObject."0".responsavel
    Set req.padeGretSq = jsonObject."0".padeGretSq
    Set req.etinia = jsonObject."0".etinia
    Set req.padeEtdeSq = jsonObject."0".padeEtdeSq
    Set req.etniaDetalhe = jsonObject."0".etniaDetalhe
    Set req.padeReliSq = jsonObject."0".padeReliSq
    Set req.religiao = jsonObject."0".religiao
    Set req.padeEsciSq = jsonObject."0".padeEsciSq
    Set req.estadoCivil = jsonObject."0".estadoCivil
    Set req.padeOcupSq = jsonObject."0".padeOcupSq
    Set req.ocupacao = jsonObject."0".ocupacao
    Set req.padeSifaSq = jsonObject."0".padeSifaSq
    Set req.situacaoFamiliar = jsonObject."0".situacaoFamiliar
    Set req.padeEcldSq = jsonObject."0".padeEcldSq
    Set req.escolaridade = jsonObject."0".escolaridade
    Set req.endeTpEndereco = jsonObject."0".endeTpEndereco
    Set req.endeTienSq = jsonObject."0".endeTienSq
    Set req.endeCep = jsonObject."0".endeCep
    Set req.endeTiloCd = jsonObject."0".endeTiloCd
    Set req.endeTpLogradouro = jsonObject."0".endeTpLogradouro
    Set req.endeNmLogr = jsonObject."0".endeNmLogr
    Set req.endeNrImovel = jsonObject."0".endeNrImovel
    Set req.endeComplemento = jsonObject."0".endeComplemento
    Set req.endePaisSq = jsonObject."0".endePaisSq
    Set req.endePaisDs = jsonObject."0".endePaisDs
    Set req.endeUf = jsonObject."0".endeUf
    Set req.endeUnfeDs = jsonObject."0".endeUnfeDs
    Set req.endeMuniSq = jsonObject."0".endeMuniSq
    Set req.endeMuniDs = jsonObject."0".endeMuniDs
    Set req.endeMuniCdIbge = jsonObject."0".endeMuniCdIbge
    Set req.endeDistSq = jsonObject."0".endeDistSq
    Set req.endeDistDs = jsonObject."0".endeDistDs
    Set req.endeNmBairro = jsonObject."0".endeNmBairro
    Set req.endeDsPontoRef = jsonObject."0".endeDsPontoRef

    //Send message to Message Router to eventually be put in an HL7 message
    set tSc=..SendRequestAsync("MsgRouter",req)

    Quit tsc
}

}
