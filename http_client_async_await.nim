import std/[asyncdispatch, httpclient]

proc asyncProc(): Future[string] {.async.} =
    var client = newAsyncHttpClient()
    try:
        return await client.getContent("http://google.com")
    finally:
        client.close()

echo waitFor asyncProc()