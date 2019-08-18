package handle

import (
	"net/http"
	"text/template"
)

func HandleRoot(w http.ResponseWriter, r *http.Request) {
	tpl := template.Must(template.ParseFiles("./template/top.tpl"))

	m := map[string]string{
		"Service": "Fresheat",
	}

	tpl.Execute(w, m)
}
