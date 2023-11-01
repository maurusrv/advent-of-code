package day1

import (
	"strings"
)

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

func GetPositionToFirstEnterBasementV2(instruction string) int {
	position := 0

	for i := 1; i <= len(instruction); i++ {
		paren := string(instruction[0:i])

		floor := GetFloor(paren, 0)

		if floor == -1 {
			position = i
			break
		}
	}

	return position
}
