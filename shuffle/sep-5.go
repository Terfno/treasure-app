package shuffle

func Sep5(slice []int) ([]int, []int, []int, []int, []int) {
	per5 := len(slice) / 5

	var data1, data2, data3, data4, data5 []int

	for i := 0; i < len(slice); i++ {
		if 0 <= i && i < per5 {
			data1 = append(data1, slice[i])
		} else if per5 <= i && i < per5*2 {
			data2 = append(data2, slice[i])
		} else if per5*2 <= i && i < per5*3 {
			data3 = append(data3, slice[i])
		} else if per5*3 <= i && i < per5*4 {
			data4 = append(data4, slice[i])
		} else if per5*4 <= i && i < per5*5 {
			data5 = append(data5, slice[i])
		}
	}

	return data1, data2, data3, data4, data5
}
