Class hcd.jsonvacivida.LoginVacivida
{

/// Get vacivida token
ClassMethod GetVacividaToken() As %String
{
    set credentials = {} 
    set credentials.Data = {}
    set credentials.Data.Login = "00564831042"
    set credentials.Data.Senha = "123456"
    set request=##class(%Net.HttpRequest).%New()
    set request.ContentType = "application/json"
    do request.EntityBody.Write(credentials.%ToJSON())
    set request.Server="servicovacivida.homologacao.sp.gov.br"
    set request.Https=0
    set status=request.Post("/usuario/Logar",0)
    set httpResponse = request.HttpResponse
    set response = ##class(%DynamicObject).%FromJSON(httpResponse.Data)
    Return response.Data
}

}
