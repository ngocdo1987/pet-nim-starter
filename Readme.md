## How to build
```bash
nim c helloworld.nim
```

or compile + run

```bash
nim c -r helloworld.nim
```

or compile + optimize size

```bash
nim -d:release c hello
nim -d:release --opt:size c hello
nim -d:release --opt:size c hello && strip -s hello
```

or support SSL (if you receive error "SSL support is not available. Cannot connect over SSL. Compile with -d:ssl to enable")

```bash
nim -d:release -d:ssl --opt:size c http_server && strip -s http_server
```
## Base64 support
https://nim-lang.org/docs/base64.html
## HTTP client
Home: https://nim-lang.org/docs/httpclient.html
Proxy: https://nim-lang.org/docs/httpclient.html#proxy
## HTTP server
https://planety.github.io/prologue/quickstart/
## Datetime
https://nim-lang.org/docs/times.html
## Examples
https://github.com/planety/prologue-examples/tree/master