nim -d:release -d:ssl --opt:size c http_server && strip -s http_server
mv http_server build/http_server