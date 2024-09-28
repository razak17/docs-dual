package main

import (
	"fmt"
	"os"
	"strconv"
	"strings"
	"time"
)

func main3() {
	endAt := "2023-09-08 00:00:00 +0000 +0000"
	timezone := "UTC - (UTC+14)"

	parts := strings.Split(timezone, " - ")
	utcOffset := strings.TrimPrefix(parts[1], "(UTC")
	utcOffset = strings.TrimSuffix(utcOffset, ")")

	num, err := strconv.Atoi(utcOffset)
	if err != nil {
		fmt.Println("Some error happened here again")
		return
	}

	offset := num * 60 * 60 // UTC-5 in seconds

	parsedDate, err := time.Parse("2006-01-02 00:00:00 +0000 +0000", endAt)
	fmt.Fprintf(os.Stderr, "DEBUGPRINT[3]: date2.go:30: parsedDate=%+v\n", parsedDate)
	if err != nil {
		fmt.Println("Some error happened here", err)
		return
	}
	parsedTimezone := time.FixedZone("UTC", 0)
	currentDate := time.Now().In(parsedTimezone).Add(time.Duration(offset) * time.Second)
	fmt.Fprintf(os.Stderr, "DEBUGPRINT[2]: date2.go:36: currentDate=%+v\n", currentDate)
	if currentDate.Before(parsedDate) {
		fmt.Println("curentDate is before parsedDate")
	} else if currentDate.After(parsedDate) {
		fmt.Println("currentDate is after parsedDate")
	} else {
		fmt.Println("no")
	}
}
