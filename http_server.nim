import std/httpclient
import std/[times, os]
import prologue

proc hello*(ctx: Context) {.async.} =
    resp "This is Nim HTTP request server"

proc getdata*(ctx: Context) {.async.} =
    # let startTime = now()
    let url = ctx.getQueryParams("url")
    var client = newHttpClient()
    try:
        let getContent = client.getContent(url)
        resp getContent
    finally:
        client.close()
        # let endTime = now()
        # echo "Time taken: ", endTime - startTime

let env = loadPrologueEnv(".env")
let settings = newSettings(
    port = Port(env.getOrDefault("PORT", 8888))
)
let app = newApp(settings = settings)

app.addRoute("/", hello)
app.addRoute("/getdata", getdata)
app.run()