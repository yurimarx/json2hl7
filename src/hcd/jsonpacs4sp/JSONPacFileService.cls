Class hcd.jsonpacs4sp.JSONPacFileService Extends Ens.BusinessService
{

Property Format As %String(MAXLEN = 3);

Parameter ADAPTER = "EnsLib.File.InboundAdapter";

Parameter SETTINGS = "Format";

Method OnProcessInput(pInput As %FileCharacterStream, pOutput As %RegisteredObject) As %Status
{
    Set tsc=$$$OK
    
    Set jsonContent = ""
    
    While 'pInput.AtEnd {
        Set jsonContent = jsonContent_pInput.ReadLine()
    }
    
    Set jsonObject = ##class(%DynamicAbstractObject).%FromJSON(jsonContent)

    Set iter = jsonObject.%GetIterator()

    Set seq = 1
    
    While iter.%GetNext(.key, .value, .type ) {
        Set req = ##class(hcd.jsonpacs4sp.JSONPacReq).%New()

        Set req.currentDateTime = $ZSTRIP($ZDATETIME($HOROLOG,8,2), "*W",":")
        Set req.messageId = $PIECE(pInput.Attributes("Filename"),"/",*) 
        Set req.idPaciente = value.paciId
        Set req.cnes = value.cnes
        Set req.matricula = value.matricula
        Set req.nome = $PIECE(value.nome," ")
        Set req.sobrenome = $PIECE(value.nome," ", 2)
        Set req.nomeFamilia = $PIECE(value.nome," ", 3)
        Set req.nomeSocial = value.nomeSocial
        Set tempDate = $zdateh(value.dtNasc,4)
        Set req.dtNasc = $zdate(tempDate,3)_"T00:00:00" 
        Set req.tpSexo = value.tpSexo 
        Set req.sexo = value.sexo
        Set req.origem = value.origem
        Set req.uf = value.uf
        Set req.muniSq = value.muniSq
        Set req.muniDs = value.muniDs
        Set req.naturalidade = value.naturalidade
        Set req.mae = value.mae
        Set req.pai = value.pai
        Set req.conjuge = value.conjuge
        Set req.responsavel = value.responsavel
        Set req.padeGretSq = value.padeGretSq
        Set req.etinia = value.etinia
        Set req.padeEtdeSq = value.padeEtdeSq
        Set req.etniaDetalhe = value.etniaDetalhe
        Set req.padeReliSq = value.padeReliSq
        Set req.religiao = value.religiao
        Set req.padeEsciSq = value.padeEsciSq
        Set req.estadoCivil = value.estadoCivil
        Set req.padeOcupSq = value.padeOcupSq
        Set req.ocupacao = value.ocupacao
        Set req.padeSifaSq = value.padeSifaSq
        Set req.situacaoFamiliar = value.situacaoFamiliar
        Set req.padeEcldSq = value.padeEcldSq
        Set req.escolaridade = value.escolaridade
        Set req.endeTpEndereco = value.endeTpEndereco
        Set req.endeTienSq = value.endeTienSq
        Set req.endeCep = value.endeCep
        Set req.endeTiloCd = value.endeTiloCd
        Set req.endeTpLogradouro = value.endeTpLogradouro
        Set req.endeNmLogr = value.endeNmLogr
        Set req.endeNrImovel = value.endeNrImovel
        Set req.endeComplemento = value.endeComplemento
        Set req.endePaisSq = value.endePaisSq
        Set req.endePaisDs = value.endePaisDs
        Set req.endeUf = value.endeUf
        Set req.endeUnfeDs = value.endeUnfeDs
        Set req.endeMuniSq = value.endeMuniSq
        Set req.endeMuniDs = value.endeMuniDs
        Set req.endeMuniCdIbge = value.endeMuniCdIbge
        Set req.endeDistSq = value.endeDistSq
        Set req.endeDistDs = value.endeDistDs
        Set req.endeNmBairro = value.endeNmBairro
        Set req.endeDsPontoRef = value.endeDsPontoRef

        If ..Format = "HL7" {
            set tSc=..SendRequestAsync("MsgHL7RouterPac",req)
        } Else {
            set tSc=..SendRequestAsync("MsgSDARouterPac",req)
        }

    }
    
    Quit tsc
}

}
