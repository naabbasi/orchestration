package main

import (
	"log"
	"net/http"
)

func main() {
	http.Handle("/", http.FileServer(http.Dir("./content")))
	log.Fatal(http.ListenAndServe(":9091", nil))
}
