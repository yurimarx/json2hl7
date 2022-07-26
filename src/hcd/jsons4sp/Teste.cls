Class hcd.jsontohl7.Teste
{

/// Description
ClassMethod Read() As %Status
{
    Set sc = $$$OK  
    
    Set jsonContent = [
        {
            "paciId": 2965065,
            "codigo": "I10",
            "descricao": "Hipertensao essencial (primaria)",
            "dtInicio": "10/11/2014 08:30:00",
            "status": "A"
        },
        {
            "paciId": 2965065,
            "codigo": "E78.0",
            "descricao": "Hipercolesterolemia pura",
            "dtInicio": "11/03/2016 17:50:00",
            "status": "A"
        }
    ]
     
    set iter = jsonContent.%GetIterator()
    while iter.%GetNext(.key, .value, .type ) {
        Write value.paciId
        write "key = "_key_", value = "_value_", type = "_type,!
    }

    Set key=$ORDER(jsonContent(""))
    
    While (key'="") {
        Write jsonContent.%Get(key).paciId
        Set key=$ORDER(jsonContent(key))
    }


    
    Return sc
}

/// Send files
ClassMethod Send(pDir As %String, pFileSpec As %String) As %Status
{
    Set sc = $$$OK
    Set tRS=##class(%ResultSet).%New("%Library.File:FileSet")

    Set tSC=tRS.Execute(pDir,pFileSpec)

    While tRS.Next() {
        
        Set stream=##class(%Stream.FileCharacter).%New()
        Set sc=stream.LinkToFile(tRS.Get("Name"))
        
        Set httprequest=##class(%Net.HttpRequest).%New() 
        Set httprequest.Https=0
        Set httprequest.Server="localhost"
        Set httprequest.Port=52773 
        Do httprequest.EntityBody.CopyFrom(stream)
        set tSc = httprequest.Post("/hcd/api/clinicaldata/write")
        Write tSc,!
    }
    
    Return sc
}

ClassMethod teste2()
{
    Set datetime = $ZDATETIME($HOROLOG,8,2)
    Set str = $ZSTRIP(datetime, "*W",":")
    Write str
}

ClassMethod teste3()
{
    Set stream=##class(%FileCharacterStream).%New()
	Set stream.Filename="/opt/user/output/paciente/10C47920-E5A9-11EC-8CDD-0242AC140002.json_2022-06-06_14.43.54.895"
    Write stream.Attributes("Filename")
}

ClassMethod GetDateTime(Input As %String) As %String
{
    Set date = $PIECE(Input, "T", 1)
    Set temphour = $PIECE(Input, "T", 2)
    Set hour = $PIECE(temphour, "Z", 1)
    Return date_" "_hour
}

ClassMethod GetEnv(key As %String) As %String
{
    Set stream=##class(%Stream.FileCharacter).%New()
    
    Set sc=stream.LinkToFile("/var/opt/hcd.properties")
    
    Set result = ""

    While 'stream.AtEnd {
    
        Set line=stream.Read()
        If $PIECE(line, "=", 1) = key {
            Set result = $PIECE(line, "=", 2)
        }
    }

    return result
}

ClassMethod testFisico() As %Status
{
    Set jsonContent = ""
    Set stream=##class(%Stream.FileCharacter).%New()
    
    Set sc=stream.LinkToFile("/opt/user/teste.json")
    Set stream.TranslateTable = "UTF8"
    While 'stream.AtEnd {
        Set jsonContent = jsonContent_stream.Read() 
    }
    
    Set jsonObject = ##class(%DynamicAbstractObject).%FromJSON(jsonContent)

    Set iter = jsonObject.%GetIterator()

    Set seq = 1
    
    While iter.%GetNext(.key, .value ) {
        
        Set req = ##class(hcd.jsonfisicos4sp.JSONFisicoReq).%New()
        Set req.currentDateTime = $ZSTRIP($ZDATETIME($HOROLOG,8,2), "*W",":")
        Set seq = seq + 1
        
        Set req.idPaciente = value.paciId 
        Set req.cnes = value.cnes

        Set req.autoridade = value.assigningAuthority
        Set req.nomeEstabelecimento = value.unfuNome
        Set req.nomeReduzidoEstabelecimento = value.unfuNomeReduz
        Set req.siglaEstabelecimento = value.unfuSigla

        Set idx = 1

        If value.amcvStNormal '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Situação Cardiovascular normal", value.amcvStNormal)
        }

        If value.amcvStNormal '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Situação Cardiovascular normal", value.amcvStNormal)
        }

        If value.amcvStSopro '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Presença de Sopro", value.amcvStSopro)
        }

        If value.amcvStSistolicMitral '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Sopro com característica sistólica mitral", value.amcvStSistolicMitral)
        }

        If value.amcvStSistolicAortico '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Sopro com característica sistólica aórtico", value.amcvStSistolicAortico)
        }

        If value.amcvStSistolicPulmonar '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Sopro com característica sistólica pulmonar", value.amcvStSistolicPulmonar)
        }

        If value.amcvStSistolicTricuspede '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Sopro com característica sistólica tricúspede", value.amcvStSistolicTricuspede)
        }

        If value.amcvStSistolicCarotida '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Sopro com característica sistólica carótida", value.amcvStSistolicCarotida)
        }

        If value.amcvStDiastolicMitral '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Sopro com característica diastólica mitral", value.amcvStDiastolicMitral)
        }

        If value.amcvStDiastolicMitral '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Sopro com característica diastólica mitral", value.amcvStDiastolicMitral)
        }

        If value.amcvStDiastolicAortico '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Sopro com característica diastólica aórtico", value.amcvStDiastolicAortico)
        }

        If value.amcvStDiastolicPulmonar '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Sopro com característica diastólica pulmonar", value.amcvStDiastolicPulmonar)
        }

        If value.amcvStDiastolicTricuspede '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Sopro com característica diastólica tricúspede", value.amcvStDiastolicTricuspede)
        }

        If value.amcvStSoproContinuo '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Sopro contínuo", value.amcvStSoproContinuo)
        }

        If value.amcvStEstalidoAbertura '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Estalido de abertura", value.amcvStEstalidoAbertura)
        }

        If value.amcvStAtrioPericardico '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Presença de átrio pericárdico", value.amcvStAtrioPericardico)
        }

        If value.amcvStTercBulha '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Presença de terceira bulha", value.amcvStTercBulha)
        }

        If value.amcvStQuartBulha '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Presença de quarta bulha", value.amcvStQuartBulha)
        }
            
        If value.amcvStPulsoMmii '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Estado de pulso MMII", value.amcvStPulsoMmii)
        }

        If value.amcvStPulsoMmss '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Estado de pulso MMSS", value.amcvStPulsoMmss)
        }

        If value.amcvDsOutros '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Outras informações cardio vasculares", value.amcvDsOutros)
        }

        Set req.dataInclusao = value.anfaDtInclusao 
        Set req.dataLiberacao = value.anfaDtLiberacao  
        Set req.dataAlteracao = value.anfaDtAlteracao  
        
        
    }
}

/// Insere indicador no array
ClassMethod InsertItem(idx As %Integer, req As hcd.jsonfisicos4sp.JSONFisicoReq, key As %String, value As %String) As %Status
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
