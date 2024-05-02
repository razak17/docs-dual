package main

import (
	"fmt"
	"os"
	"strings"
	"time"
)

func main2() {
	dateString := "2023-09-05 23:00:00 +0000 +0000"

	// Parse the date string
	layout := "2006-01-02 15:04:05 -0700 -0700"
	date1, err := time.Parse(layout, dateString)
	if err != nil {
		fmt.Println("Error parsing date:", err)
		return
	}

	// Print the parsed date
	fmt.Println("Parsed date:", date1)
	date2 := time.Now()
	fmt.Fprintf(os.Stderr, "DEBUGPRINT[1]: date.go:21: currentDate=%+v\n", date2)

	// Compare the dates
	if date1.Before(date2) {
		fmt.Println("date1 is before date2")
	} else if date1.After(date2) {
		fmt.Println("date1 is after date2")
	} else {
		fmt.Println("date1 and date2 are equal")
	}
	str := "EST - (UTC-5)"
	parts := strings.Split(str, " - ")
	timeZone := parts[0]
	utcOffset := strings.TrimPrefix(parts[1], "(UTC")
	utcOffset = strings.TrimSuffix(utcOffset, ")")
	fmt.Println(timeZone)
	fmt.Println(utcOffset)
}

func hello() {
	// Create two time objects
	date1 := time.Date(2022, time.January, 1, 0, 0, 0, 0, time.UTC)
	date2 := time.Date(2022, time.February, 1, 0, 0, 0, 0, time.UTC)

	// Parse the timezone offset
	offset := -5 * 60 * 60 // UTC-5 in seconds

	// Create the timezone
	timezone := time.FixedZone("EST", offset)

	// Convert the dates to the timezone
	date1 = date1.In(timezone)
	date2 = date2.In(timezone)

	// Compare the dates
	if date1.Before(date2) {
		fmt.Println("date1 is before date2")
	} else if date1.After(date2) {
		fmt.Println("date1 is after date2")
	} else {
		fmt.Println("date1 and date2 are equal")
	}
}
