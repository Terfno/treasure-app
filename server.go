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

	m := map[string]string{
		"Service": "Fresheat",
		"data":    SliceToString(IntToStrForSlice(shuffle(generate(30)))),
	}

	tpl.Execute(w, m)
}

func main() {
	http.HandleFunc("/", handlerTop)

	fmt.Println("now listen at 8080")
	http.ListenAndServe(":8080", nil)
}

func SliceToString(slice []string) string {
	var str string
	for _, v := range slice {
		str += v
	}
	return str
}

func IntToStrForSlice(data []int) []string {
	str := []string{}
	cnt := len(data)

	for i := 0; i < cnt; i++ {
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
