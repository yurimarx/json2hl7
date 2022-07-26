Class hcd.jsonmedidacorpos4sp.JSONMedidaCorpoFileService Extends Ens.BusinessService
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
        
        Set req = ##class(hcd.jsonmedidacorpos4sp.JSONMedidaCorpoReq).%New()
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

        If value.ammpNrPeso '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Peso do paciente (em Kg)", value.ammpNrPeso)
        }

        If value.ammpNrAltura '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Altura do paciente (em Cm)", value.ammpNrAltura)
        }

        If value.ammpNrImc '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Índice de massa corporal", value.ammpNrImc)
        }

        If value.ammpNrCintura '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Medida da cintura (em Cm)", value.ammpNrCintura)
        }

        If value.ammpNrTempAux '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Temperatura Auxiliar", value.ammpNrTempAux)
        }

        If value.ammpNrTempOral '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Temperatura Oral", value.ammpNrTempOral)
        }

        If value.ammpNrTempRetal '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Temperatura Retal", value.ammpNrTempRetal)
        }

        If value.ammpNrFreqResp '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Frequência respiratória (por minuto)", value.ammpNrFreqResp)
        }

        If value.ammpNrFreqCardiaca '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Frequência cardíaca (por minuto)", value.ammpNrFreqCardiaca)
        }

        If value.ammpMembSupDirSentaS '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Pressão sistólica do membro superior direito (sentado)", value.ammpMembSupDirSentaS)
        }

        If value.ammpMembSupDirSentaD '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Pressão diastólica do membro superior direito (sentado)", value.ammpMembSupDirSentaD)
        }

        If value.ammpMembSupEsqSentaS '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Pressão sistólica do membro superior esquerdo (sentado)", value.ammpMembSupEsqSentaS)
        }

        If value.ammpMembSupEsqSentaD '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Pressão diastólica do membro superior esquerdo (sentado)", value.ammpMembSupEsqSentaD)
        }

        If value.ammpMembSupDirDeitaS '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Pressão sistólica do membro superior direito (deitado)", value.ammpMembSupDirDeitaS)
        }

        If value.ammpMembSupDirDeitaD '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Pressão diastólica do membro superior direito (deitado)", value.ammpMembSupDirDeitaD)
        }

        If value.ammpMembSupEsqDeitaS '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Pressão sistólica do membro superior esquerdo (deitado)", value.ammpMembSupEsqDeitaS)
        }

        If value.ammpMembSupEsqDeitaD '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Pressão diastólica do membro superior esquerdo (deitado)", value.ammpMembSupEsqDeitaD)
        }
            
        If value.ammpMembSupDirEmpeS '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Pressão sistólica do membro superior direito (em pé)", value.ammpMembSupDirEmpeS)
        }

        If value.ammpMembSupDirEmpeD '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Pressão diastólica do membro superior direito (em pé)", value.ammpMembSupDirEmpeD)
        }

        If value.ammpMembSupEsqEmpeS '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Pressão sistólica do membro superior esquerdo (em pé)", value.ammpMembSupEsqEmpeS)
        }

        If value.ammpMembSupEsqEmpeD '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Pressão diastólica do membro superior esquerdo (em pé)", value.ammpMembSupEsqEmpeD)
        }
            
        If value.ammpMembInfDirS '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Pressão sistólica do membro inferior direito", value.ammpMembInfDirS)
        }

        If value.ammpMembInfDirD '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Pressão diastólica do membro inferior direito", value.ammpMembInfDirD)
        }

        If value.ammpMembInfEsqS '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Pressão sistólica do membro inferior esquerdo", value.ammpMembInfEsqS)
        }

        If value.ammpMembInfEsqD '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Pressão diastólica do membro inferior esquerdo", value.ammpMembInfEsqD)
        }

        If value.ammpDsDextro '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Dextro", value.ammpDsDextro)
        }

        If value.ammpNidoSq '= "" {   
            Set tSC = ..InsertItem(.idx, .req, "Nota do Nível de Dor", value.ammpNidoSq)
        }

        Set req.dataInclusao = value.ammpDtInclusao 
        Set req.dataLiberacao = value.ammpDtLiberacao  
        Set req.dataAlteracao = value.ammpDtAlteracao  
        
        Set tSc=..SendRequestAsync("MsgSDARouterMedidaCorpo",req)
        
    }
    
    Quit tSc
}

/// Insere indicador no array
ClassMethod InsertItem(idx As %Integer, req As JSONMedidaCorpoReq, key As %String, value As %String) As %Status
{
    Set sc = $$$OK
    Try {
        Set item = ##class(hcd.jsonmedidacorpos4sp.MedidaCorpo).%New()
        Set item.idx = idx
        Set item.indicador = key
        Set item.valorIndicador = value
        Do req.medidasCorpo.Insert(item)
        Set idx = idx + 1    
    } Catch err {
        Set sc = 0
    }

    Return sc
}

}
