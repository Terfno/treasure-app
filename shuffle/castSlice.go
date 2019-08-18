package shuffle

import "strconv"

func IntToStrForSlice(data []int) []string {
	str := make([]string, len(data))

	for i, v := range data {
		str[i] = strconv.Itoa(v)
	}

	return str
}
