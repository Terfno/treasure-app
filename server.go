package main

import (
	"database/sql"
	"fmt"
	"log"
	"net/http"

	_ "github.com/go-sql-driver/mysql"

	"./gosql"
	"./handle"
)

func main() {
	db, err := sql.Open("mysql", "root:password@tcp(127.0.0.1:3306)/treasure_app")
	if err != nil {
		log.Fatal("db error / fail connect db")
	}
	defer db.Close()

	fmt.Println("でーたべーすてすと:" + gosql.IDName(1, db))

	http.HandleFunc("/", handle.HandleRoot)

	fmt.Println("now listen at 8080")
	http.ListenAndServe(":8080", nil)
}
