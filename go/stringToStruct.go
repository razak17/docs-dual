func StringToStruct(input string) (*MyStruct, error) {
    fields := strings.Split(strings.TrimSpace(input), ",")

    if len(fields) != 2 {
        return nil, fmt.Errorf("invalid input: expected 2 fields, got %d", len(fields))
    }

    field1 := strings.TrimSpace(fields[0])
    field2, err := strconv.Atoi(strings.TrimSpace(fields[1]))
    if err != nil {
        return nil, fmt.Errorf("invalid input: %v", err)
    }

    result := &MyStruct{
        Field1: field1,
        Field2: field2,
    }

    return result, nil
}

input := "Hello,42"
result, err := StringToStruct(input)
if err != nil {
    fmt.Println("Error:", err)
    return
}

fmt.Println("Field1:", result.Field1)
fmt.Println("Field2:", result.Field2)
