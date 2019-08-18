package shuffle

func Generate(n int) []int {
	slice := []int{}

	for i := 0; i < n; i++ {
		slice = append(slice, i)
	}

	return slice
}
