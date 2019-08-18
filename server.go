package main

import (
	"database/sql"
	"fmt"
	"html/template"
	"log"
	"net/http"

	_ "github.com/go-sql-driver/mysql"

	"./gosql"
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
	db, err := sql.Open("mysql", "root:password@tcp(127.0.0.1:3306)/treasure_app")
	if err != nil {
		log.Fatal("db error / fail connect db")
	}
	defer db.Close()

	fmt.Println(gosql.IDName(1, db))

	http.HandleFunc("/", handlerTop)

	fmt.Println("now listen at 8080")
	http.ListenAndServe(":8080", nil)
}
