//go:build server
// +build server

package main

import (
	"chatroom/cmd/server/app"
)

func main() {
	app.Excute()
}
