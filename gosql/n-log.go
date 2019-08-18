package gosql

import (
	"database/sql"
	"log"
)

func NLog(index int, db *sql.DB) string {
	var seatlog string

	err := db.QueryRow(`select map from log limit ?,1`, index).Scan(&seatlog)

	if err == sql.ErrNoRows {
		log.Fatalln("no log")
	} else if err != nil {
		log.Fatalln(err)
	}

	return seatlog
}
