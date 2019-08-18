package main

import (
	"database/sql"
	"fmt"
	"log"
	"math/rand"
	"net/http"
	"time"

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

	rand.Seed(time.Now().UnixNano())
	pretestfix := rand.Intn(30)
	fmt.Println("でーたべーすてすと:" + string(pretestfix) + gosql.IDName(pretestfix, db))

	http.HandleFunc("/", handle.HandleRoot)
	http.HandleFunc("/gen", handle.HandleGen)

	fmt.Println("now listen at 8080")
	http.ListenAndServe(":8080", nil)
}
