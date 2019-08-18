package gosql

import (
	"database/sql"
	"log"
)

func IDName(id int, db *sql.DB) string {
	var name string

	err := db.QueryRow(`select name from list where id=?`, id).Scan(&name)

	if err == sql.ErrNoRows {
		log.Fatalln("no name")
	} else if err != nil {
		log.Fatalln(err)
	}

	return name
}
