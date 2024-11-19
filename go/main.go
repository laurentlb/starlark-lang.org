package main

import (
	"syscall/js"

	"go.starlark.net/starlark"
	"go.starlark.net/syntax"
)

func main() {
	js.Global().Set("evalStarlark", js.FuncOf(eval))

	// Prevent the app from terminating.
	c := make(chan struct{})
	<-c
}

func printer(thread *starlark.Thread, msg string) {
	js.Global().Call("updateOutput", msg)
}

func eval(this js.Value, inputs []js.Value) interface{} {
	text := inputs[0].String()
	thread := &starlark.Thread{
		Name:  "main",
		Print: printer,
	}
	_, err := starlark.ExecFileOptions(&syntax.FileOptions{}, thread, "", text, nil)
	if err != nil {
		js.Global().Call("setError", err.Error())
	}

	return nil
}
