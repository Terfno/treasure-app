package main

import (
	"fmt"
	"html/template"
	"net/http"

	"./shuffle"
)

func handlerTop(w http.ResponseWriter, r *http.Request) {
	tpl := template.Must(template.ParseFiles("./template/top.tpl"))

	m := map[string]string{
		"Service": "Fresheat",
		"data":    shuffle.SliceToString(shuffle.IntToStrForSlice(shuffle.Shuffle(shuffle.Generate(30)))),
	}

	tpl.Execute(w, m)
}

func main() {
	http.HandleFunc("/", handlerTop)

	fmt.Println("now listen at 8080")
	http.ListenAndServe(":8080", nil)
}
