package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println("File upload service started")
}

func uploadFile(filename string, data []byte) error {
	err := os.WriteFile(filename, data, 0644)
	if err != nil {
		return fmt.Errorf("failed to save file: %w", err)
	}
	fmt.Printf("File %s uploaded successfully\n", filename)
	return nil
}
