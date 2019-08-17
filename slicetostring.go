package main

import (
	"fmt"
)

func main() {
	fuga := []string{"1", "2", "3", "4", "5"}
	hoge := SliceToString(fuga)
	fmt.Println(hoge)
}

func SliceToString(slice []string) string {
	var str string
	for _, v := range slice {
		str += v + ","
	}
	return str
}
