package main

import (
	"database/sql"
	"fmt"
	"log"
	_ "github.com/go-sql-driver/mysql"

	"./gosql"
	"./shuffle"
)

func main() {
	db, err := sql.Open("mysql", "root:password@tcp(127.0.0.1:3306)/treasure_app")
	if err != nil {
		log.Fatal("db error / fail connect db")
	}
	defer db.Close()

	data := shuffle.Generate(30)

	var cand []int
	var scand string

	for i := 0; ; i++ {
		cand = shuffle.Shuffle(data)
		scand = shuffle.SliceToString(shuffle.IntToStrForSlice(cand))
		comp := gosql.NLog(i, db)

		if scand == comp {
			continue
		} else {
			break
		}
	}

	fmt.Println(cand)
}
