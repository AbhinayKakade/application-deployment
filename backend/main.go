package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello, World! This is the Go backend.")
	})
	http.HandleFunc("/api", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, `{"message": "Welcome to the API"}`)
	})

	fmt.Println("Backend is running on port 8080")
	http.ListenAndServe(":8080", nil)
}
