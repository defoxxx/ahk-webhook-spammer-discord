webhook_url := "https://discord.com/api/webhooks/1076869445009551410/WUH7PyRSgncRF2RDOLR8tXqwqVt1xiw9xGcQt7S2xLsdyzFQlB-ceDeWZfChAJ3zN0Pf" ; замените на свой URL вебхука
message_text := "niggers" ; замените на свой текст сообщения

while true
{
    WinHttpReq := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    WinHttpReq.Open("POST", webhook_url)
    WinHttpReq.SetRequestHeader("Content-Type", "application/json")
    payload := "{""content"":""" message_text """}"
    WinHttpReq.Send(payload)
    WinHttpReq.WaitForResponse()
    Sleep, 5
}