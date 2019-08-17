package main

import (
	"fmt"
	"html/template"
	"math/rand"
	"net/http"
	"time"
)

func handlerTop(w http.ResponseWriter, r *http.Request) {
	tpl := template.Must(template.ParseFiles("./template/top.tpl"))

	shuffle := shuffle(generate(30))

	m := map[string]string{
		"Service": "Fresheat",
		"data": inttostr(shuffle),
	}

	tpl.Execute(w, m)
}

func main() {
	http.HandleFunc("/top", handlerTop)

	fmt.Println("now listen at 8080")
	http.ListenAndServe(":8080", nil)
}

func inttostr(data []int) []string {
	str := []string{}
	lr := len(data)

	for i := 0; i < lr; i++ {
		str[i] = string(data[i])
	}

	return str
}

func generate(n int) []int {
	slice := []int{}

	for i := 0; i < n; i++ {
		slice = append(slice, i)
	}

	return slice
}

func shuffle(data []int) []int {
	n := len(data)
	rand.Seed(time.Now().UnixNano())

	for i := n - 1; i >= 0; i-- {
		j := rand.Intn(i + 1)
		data[i], data[j] = data[j], data[i]
	}

	return data
}
