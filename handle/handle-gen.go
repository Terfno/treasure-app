package handle

import (
	"database/sql"
	"log"
	"net/http"
	"text/template"

	_ "github.com/go-sql-driver/mysql"
	
	"../gosql"
	"../shuffle"
)

func HandleGen(w http.ResponseWriter, r *http.Request) {
	db, err := sql.Open("mysql", "root:password@tcp(127.0.0.1:3306)/treasure_app")
	if err != nil {
		log.Fatal("db error / fail connect db")
	}
	defer db.Close()
	tpl := template.Must(template.ParseFiles("./template/gen.tpl"))

	hoge := shuffle.Shuffle(shuffle.Generate(30))

	m := map[string]string{
		"data_1_1_1": gosql.IDName(hoge[0], db),
		"data_1_1_2": gosql.IDName(hoge[1], db),
		"data_1_2_1": gosql.IDName(hoge[2], db),
		"data_1_2_2": gosql.IDName(hoge[3], db),
		"data_1_3_1": gosql.IDName(hoge[4], db),
		"data_1_3_2": gosql.IDName(hoge[5], db),
		"data_2_1_1": gosql.IDName(hoge[6], db),
		"data_2_1_2": gosql.IDName(hoge[7], db),
		"data_2_2_1": gosql.IDName(hoge[8], db),
		"data_2_2_2": gosql.IDName(hoge[9], db),
		"data_2_3_1": gosql.IDName(hoge[10], db),
		"data_2_3_2": gosql.IDName(hoge[11], db),
		"data_3_1_1": gosql.IDName(hoge[12], db),
		"data_3_1_2": gosql.IDName(hoge[13], db),
		"data_3_2_1": gosql.IDName(hoge[14], db),
		"data_3_2_2": gosql.IDName(hoge[15], db),
		"data_3_3_1": gosql.IDName(hoge[16], db),
		"data_3_3_2": gosql.IDName(hoge[17], db),
		"data_4_1_1": gosql.IDName(hoge[18], db),
		"data_4_1_2": gosql.IDName(hoge[19], db),
		"data_4_2_1": gosql.IDName(hoge[20], db),
		"data_4_2_2": gosql.IDName(hoge[21], db),
		"data_4_3_1": gosql.IDName(hoge[22], db),
		"data_4_3_2": gosql.IDName(hoge[23], db),
		"data_5_1_1": gosql.IDName(hoge[24], db),
		"data_5_1_2": gosql.IDName(hoge[25], db),
		"data_5_2_1": gosql.IDName(hoge[26], db),
		"data_5_2_2": gosql.IDName(hoge[27], db),
		"data_5_3_1": gosql.IDName(hoge[28], db),
		"data_5_3_2": gosql.IDName(hoge[29], db),
	}

	tpl.Execute(w, m)
}
