package handle

import (
	"net/http"
	"text/template"

	"../shuffle"
)

func HandleRoot(w http.ResponseWriter, r *http.Request) {
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
