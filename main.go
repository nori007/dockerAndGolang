package main

import (
	"fmt"
	"net/http"
)

func main() {
	fmt.Println("main start")
	http.HandleFunc("/hello", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "hello")
	})

	http.ListenAndServe(":6800", nil)
}
