package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	genSlice := generate(30)
	fmt.Println(genSlice)

	sflSlice := shuffle(genSlice)
	fmt.Println(sflSlice)

	castSlice := IntToStrForSlice(sflSlice)
	fmt.Println(castSlice)

	// convSlice := SliceToString(castSlice)
	// fmt.Println(convSlice)
}

func generate(n int) []int {
	slice := []int{}

	for i := 0; i < n; i++ {
		slice = append(slice, i)
	}

	return slice
}

func shuffle(data []int) []int {
	n := len(data)
	rand.Seed(time.Now().UnixNano())

	for i := n - 1; i >= 0; i-- {
		j := rand.Intn(i + 1)
		data[i], data[j] = data[j], data[i]
	}

	return data
}

func IntToStrForSlice(data []int) []string {
	str := make([]string, len(data))

	for i, v := range data {
		str[i] = string(v)
	}

	return str
}

func SliceToString(slice []string) string {
	var str string
	for _, v := range slice {
		str += v
	}
	return str
}
