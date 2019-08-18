package shuffle

func SliceToString(slice []string) string {
	var str string
	for _, v := range slice {
		str += v + ", "
	}
	return str
}
