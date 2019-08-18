package shuffle

func SliceToString(slice []string) string {
	var str string
	length := len(slice)

	str += "["
	for index, v := range slice {
		if index != length {
			str += v + " "
		} else {
			str += v
		}
	}
	str += "]"

	return str
}
