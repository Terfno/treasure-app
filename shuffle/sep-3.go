package shuffle

func Sep3(slice []int) ([]int, []int, []int) {
	per3 := len(slice) / 3

	var data1, data2, data3 []int

	for i := 0; i < len(slice); i++ {
		if 0 <= i && i < per3 {
			data1 = append(data1, slice[i])
		} else if 10 <= i && i < per3*2 {
			data2 = append(data2, slice[i])
		} else if 20 < i && i < per3*3 {
			data3 = append(data3, slice[i])
		}
	}

	return data1, data2, data3
}
