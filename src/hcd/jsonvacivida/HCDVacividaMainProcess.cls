Class hcd.jsonvacivida.HCDVacividaMainProcess Extends Ens.BusinessProcess [ ClassType = persistent ]
{

Method OnRequest(pRequest As hcd.jsonvacivida.VacividaReq, Output pResponse As Ens.StringResponse) As %Status
{

	Set tSC = $$$OK
    Set pResponse = ##class(Ens.StringResponse).%New()
    
    Try {
        Set tSC = ##class(hcd.jsonvacivida.SQLVacividaToSDADTL).Transform(pRequest,.sda)
        Set sdaRequest = ##class(hcd.jsons4sp.WSReq).%New()
        Set tSC = sda.XMLExportToStream(.sdaStream)
        Set tSC = sdaRequest.sda.CopyFrom(sdaStream)
        // envia o SDA para o Healthshare Edge Gateway via conexao WS
        Set tSC = ..SendRequestAsync("SDASOAPOperation", sdaRequest, 0, "", "SEND SDA")
        Set pResponse.StringValue = "Dados do Vacivida processados"
    } Catch Err {
        Set pResponse.StringValue = "Erro ao processar dados do Vacivida"
    }

    Quit tSC
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
