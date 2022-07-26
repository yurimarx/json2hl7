Class hcd.jsonfisicos4sp.JSONFisicoFileService Extends Ens.BusinessService
{

Property Format As %String(MAXLEN = 3);

Parameter ADAPTER = "EnsLib.File.InboundAdapter";

Parameter SETTINGS = "Format";

Method OnProcessInput(pInput As %FileCharacterStream, pOutput As %RegisteredObject) As %Status
{
    Set tSc=$$$OK 
    
    Set jsonContent = ""
    
    While 'pInput.AtEnd {
        Set jsonContent = jsonContent_pInput.ReadLine()
    }
    
    Set jsonObject = ##class(%DynamicAbstractObject).%FromJSON(jsonContent)

    Set iter = jsonObject.%GetIterator()

    Set seq = 1
    
    While iter.%GetNext(.key, .value ) {
        
        Set req = ##class(hcd.jsonfisicos4sp.JSONFisicoReq).%New()
        Set req.currentDateTime = $ZSTRIP($ZDATETIME($HOROLOG,8,2), "*W",":")
        Set req.messageId = $PIECE(pInput.Attributes("Filename"),"/",*)_"_"_seq 
        Set seq = seq + 1
        
        Set req.idPaciente = value.paciId 
        Set req.cnes = value.cnes

        Set req.autoridade = value.assigningAuthority
        Set req.nomeEstabelecimento = value.unfuNome
        Set req.nomeReduzidoEstabelecimento = value.unfuNomeReduz
        Set req.siglaEstabelecimento = value.unfuSigla

        Set idx = 1

        If value.amcvStNormal '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Situação Cardiovascular normal", value.amcvStNormal)
        }

        If value.amcvStNormal '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Situação Cardiovascular normal", value.amcvStNormal)
        }

        If value.amcvStSopro '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Presença de Sopro", value.amcvStSopro)
        }

        If value.amcvStSistolicMitral '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Sopro com característica sistólica mitral", value.amcvStSistolicMitral)
        }

        If value.amcvStSistolicAortico '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Sopro com característica sistólica aórtico", value.amcvStSistolicAortico)
        }

        If value.amcvStSistolicPulmonar '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Sopro com característica sistólica pulmonar", value.amcvStSistolicPulmonar)
        }

        If value.amcvStSistolicTricuspede '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Sopro com característica sistólica tricúspede", value.amcvStSistolicTricuspede)
        }

        If value.amcvStSistolicCarotida '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Sopro com característica sistólica carótida", value.amcvStSistolicCarotida)
        }

        If value.amcvStDiastolicMitral '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Sopro com característica diastólica mitral", value.amcvStDiastolicMitral)
        }

        If value.amcvStDiastolicMitral '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Sopro com característica diastólica mitral", value.amcvStDiastolicMitral)
        }

        If value.amcvStDiastolicAortico '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Sopro com característica diastólica aórtico", value.amcvStDiastolicAortico)
        }

        If value.amcvStDiastolicPulmonar '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Sopro com característica diastólica pulmonar", value.amcvStDiastolicPulmonar)
        }

        If value.amcvStDiastolicTricuspede '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Sopro com característica diastólica tricúspede", value.amcvStDiastolicTricuspede)
        }

        If value.amcvStSoproContinuo '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Sopro contínuo", value.amcvStSoproContinuo)
        }

        If value.amcvStEstalidoAbertura '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Estalido de abertura", value.amcvStEstalidoAbertura)
        }

        If value.amcvStAtrioPericardico '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Presença de átrio pericárdico", value.amcvStAtrioPericardico)
        }

        If value.amcvStTercBulha '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Presença de terceira bulha", value.amcvStTercBulha)
        }

        If value.amcvStQuartBulha '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Presença de quarta bulha", value.amcvStQuartBulha)
        }
            
        If value.amcvStPulsoMmii '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Estado de pulso MMII", value.amcvStPulsoMmii)
        }

        If value.amcvStPulsoMmss '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Estado de pulso MMSS", value.amcvStPulsoMmss)
        }

        If value.amcvDsOutros '= "" {   
            Set tSC = ..InsertItem(.idx, req, "Outras informações cardio vasculares", value.amcvDsOutros)
        }

        Set req.dataInclusao = value.anfaDtInclusao 
        Set req.dataLiberacao = value.anfaDtLiberacao 
        Set req.dataAlteracao = value.anfaDtAlteracao  
        
        Set tSc=..SendRequestAsync("MsgSDARouterFisico",req)
        
    }
    
    Quit tSc
}

/// Insere indicador no array
ClassMethod InsertItem(idx As %Integer, req As JSONFisicoReq, key As %String, value As %String) As %Status
{
    Set sc = $$$OK
    Try {
        Set item = ##class(hcd.jsonfisicos4sp.IndicadorFisico).%New()
        Set item.idx = idx
        Set item.indicador = key
        Set item.valorIndicador = value
        Do req.indicadoresFisicos.Insert(item)
        Set idx = idx + 1    
    } Catch err {
        Set sc = 0
    }

    Return sc
}

}
