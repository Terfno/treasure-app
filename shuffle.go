package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	n := 30
	slice := shuffle(generate(n))

	fmt.Println(slice)
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
