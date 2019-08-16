package main

import (
	"fmt"
	"time"
	"net/http"
	"html/template"
)

func handler(w http.ResponseWriter, r *http.Request) {
	tpl := template.Must(template.ParseFiles("clock.tpl"))

	m := map[string]string{
			"Date": time.Now().Format("2006-01-02"),
			"Time": time.Now().Format("15:04:05"),
	}

	tpl.Execute(w, m)
}

func main() {
  http.HandleFunc("/", handler) // ハンドラを登録してウェブページを表示させる
	fmt.Println("now listen at 8080")
	http.ListenAndServe(":8080", nil)
}
