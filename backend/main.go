package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello, World! This is the Go backend, proudly crafted by Manhattan Tech Ventures Pvt. Ltd., where innovation meets excellence!")
	})
	http.HandleFunc("/api", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, `{"message": ""Welcome to the API, powered by Manhattan Tech Ventures Pvt. Ltd"}`)
	})

	fmt.Println("Backend is running on port 8080")
	http.ListenAndServe(":8080", nil)
}
