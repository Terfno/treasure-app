package main

import (
	"fmt"

	"./shuffle"
)

func main() {
	rndslice := shuffle.Shuffle(shuffle.Generate(30))

	for i := 0; i < 30; i++ {
		if 0 <= i && i < 10 {
			fmt.Print(rndslice[i])
		} else if 10 <= i && i < 20 {
			fmt.Print(rndslice[i])
		} else if 20 < i && i < 30 {
			fmt.Print(rndslice[i])
		}
	}
}
