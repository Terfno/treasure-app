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

	data1, data2, data3 := shuffle.Sep3(shuffle.Shuffle(shuffle.Generate(30)))

	m := map[string]string{
		"Service": "Fresheat",
		"data_1":  shuffle.SliceToString(shuffle.IntToStrForSlice(data1)),
		"data_2":  shuffle.SliceToString(shuffle.IntToStrForSlice(data2)),
		"data_3":  shuffle.SliceToString(shuffle.IntToStrForSlice(data3)),
	}

	tpl.Execute(w, m)
}

func main() {
	db, err := sql.Open("mysql", "root:password@tcp(127.0.0.1:3306)/treasure_app")
	if err != nil {
		log.Fatal("db error / fail connect db")
	}
	defer db.Close()

	fmt.Println("でーたべーすてすと:"+gosql.IDName(1, db))

	http.HandleFunc("/", handlerTop)

	fmt.Println("now listen at 8080")
	http.ListenAndServe(":8080", nil)
}
