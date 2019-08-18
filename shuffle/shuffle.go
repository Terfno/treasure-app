package shuffle

import (
	"math/rand"
	"time"
)

func Shuffle(data []int) []int {
	n := len(data)
	rand.Seed(time.Now().UnixNano())

	for i := n - 1; i >= 0; i-- {
		j := rand.Intn(i + 1)
		data[i], data[j] = data[j], data[i]
	}

	return data
}
