#!/usr/bin/env sh

nohup consul agent -dev -ui &
echo $! > consulagent.pid
sleep 5
nohup go run ../go-micro-greeter/main.go &
echo $! > go-micro-greeter.pid
# go run ../go-kit-greeter/cmd/greetersvc/greetersvc.go