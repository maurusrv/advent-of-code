package day1

import "strings"

func GetFloor(instruction string, currentFloor int) int {
	parens := strings.Split(instruction, "")

	floor := currentFloor

	for _, paren := range parens {
		if paren == "(" {
			floor++
		}

		if paren == ")" {
			floor--
		}
	}

	return floor
}

// Index started with 0 and only up to len - 1, since we are accessing each character of the instruction
func GetPositionToFirstEnterBasement(instruction string) int {
	position := 0
	currentFloor := 0

	for i := 0; i < len(instruction); i++ {
		paren := string(instruction[i])
		floor := GetFloor(paren, currentFloor)

		if floor == -1 {
			position = i + 1
			break
		}

		currentFloor = floor
	}

	return position
}

// Index started with 1 up to len, since we are using it as exclusive upper bound
func GetPositionToFirstEnterBasementV2(instruction string) int {
	position := 0

	for i := 1; i <= len(instruction); i++ {
		parens := string(instruction[:i])

		floor := GetFloor(parens, 0)

		if floor == -1 {
			position = i
			break
		}
	}

	return position
}
