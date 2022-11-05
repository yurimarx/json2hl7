Class hcd.util.LinkUtil
{

/// List pacid files/file types
ClassMethod GetPacIDFiles(pathfile As %String, paciId As %String) As %Status
{
    Set sc = $$$OK  
    Set total = 0
    Set results = ##class(%ListOfDataTypes).%New()

    Set sc = ..GetFileTree(pathfile, "*.json", .files, .total)
    For i = 1:1:total-1 {
        Do ..GetJSONDetails(paciId, files(i), .results)
    }
    
    Write "Total de Registros no Diretorio: "_total
    Write "Total de arquivos encontrados para o Paciente "_paciId_": "_results.Count()

    For i = 1:1:results.Count() {
        Write !, results.GetAt(i)
    }

    Return sc
}

ClassMethod GetJSONDetails(paciId As %String, filepath As %String, Output results As %ListOfDataTypes) As %Status
{
    Set stream=##class(%Stream.FileCharacter).%New()
    Set stream.TranslateTable = "CP1252"
    Set sc=stream.LinkToFile(filepath)
    
    Set json = [].%FromJSON(stream)

    Set iter = json.%GetIterator() 
    
    While iter.%GetNext(.key, .value ) { 
                
        If (($isobject(value)) && (value.paciId '= "") && (value.paciId = paciId)) {
            // processa dados demograficos do paciente
            If value.matricula '= "" {
                Do results.Insert("Paciente "_paciId_" em: "_filepath)
            // processa dados da admissao do paciente
            } ElseIf value.admInstCd '= "" {
                Do results.Insert("Admissão do Paciente "_paciId_" em: "_filepath)
            // processa os documentos pessoais do paciente - rg, cpf, cns, outros
            } ElseIf value.dopaDsCompl '= "" {
                Do results.Insert("Documentos Pessoais do Paciente "_paciId_" em: "_filepath)
            // processa os contatos com o paciente - email, telefone, outros
            } ElseIf value.comuDs '= "" {
                Do results.Insert("Contatos do Paciente "_paciId_" em: "_filepath)
            // processa documento digital - PDF com pedidos e resultados com valor clinico sobre paciente
            } ElseIf value.docdAdmNr '= "" { 
                Do results.Insert("Documento Digital do Paciente "_paciId_" em: "_filepath)
            // processa os itens relacionados ao documento digital, geralmente resultados de exames e procedimentos
            } ElseIf value.ormeSq '= "" { 
                Do results.Insert("Itens de Documento Digital do Paciente "_paciId_" em: "_filepath)
            // processa historico de diagnostico sobre o paciente
            } ElseIf value.codigo '= "" {
                Do results.Insert("Diagnóstico do Paciente "_paciId_" em: "_filepath)
            // processa dados de alergias do paciente
            } ElseIf value.alerDs '= "" {
                Do results.Insert("Alergias do Paciente "_paciId_" em: "_filepath)
            // processa dados de vacinacao no s4sp do paciente
            } ElseIf value.vacina '= "" {
                Do results.Insert("Vacina do Paciente "_paciId_" em: "_filepath)
            // processa dados de agendamento de consultas do paciente
            } ElseIf value.agendaSq '= "" {
                Do results.Insert("Agenda do Paciente "_paciId_" em: "_filepath)
            // processa dados de historico familiar do paciente
            } ElseIf value.pareCd '= "" {
                Do results.Insert("Histórico Familiar do Paciente "_paciId_" em: "_filepath)
            // processa dados de exames fisicos do paciente
            } ElseIf value.amcvStNormal '= "" {
                Do results.Insert("Exame Físico do Paciente "_paciId_" em: "_filepath)
            // processa dados de medidas corporais do paciente
            } ElseIf value.ammpNrPeso '= "" {
                Do results.Insert("Medidas corporais do Paciente "_paciId_" em: "_filepath)
            // mensagem invalida
            } Else {
                Do results.Insert("Arquivo invalido do Paciente "_paciId_" em: "_filepath)
            }
        }
    }

    Return 1
}

ClassMethod GetFileTree(pFolder As %String, pWildcards As %String = "*", Output oFiles, Output count As %Integer) As %Status
{
    set fileset=##class(%ResultSet).%New("%Library.File:FileSet")
    set sc=fileset.Execute(##class(%File).NormalizeDirectory(pFolder),pWildcards,,1)
    while $$$ISOK(sc),fileset.Next(.sc) {
        if fileset.Get("Type")="D" {
            set sc=..GetFileTree(fileset.Get("Name"),pWildcards,.oFiles, .count)
        } else {
            If count = "" {
                Set count = 1
            } Else {
                Set count = count + 1
            }
            set oFiles(count)=fileset.Get("Name")
        }    
    }
    quit sc
}

}
