def binary_search(arr: list, target: int):
    left, right = 0, len(arr) - 1

    while left <= right:
        mid = (left + right) // 2

        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            left = mid + 1
        else:
            right = mid - 1

    return -1


def test_binary_search():
    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    target = 5
    assert binary_search(arr, target) == 4, "Test case 1 failed"

    target = 1
    assert binary_search(arr, target) == 0, "Test case 2 failed"

    target = 10
    assert binary_search(arr, target) == 9, "Test case 3 failed"

    target = 11
    assert binary_search(arr, target) == -1, "Test case 4 failed"

    target = -1
    assert binary_search(arr, target) == -1, "Test case 5 failed"

    arr = []
    target = 1
    assert binary_search(arr, target) == -1, "Test case 6 failed"

    arr = [1]
    target = 1
    assert binary_search(arr, target) == 0, "Test case 7 failed"

    target = 0
    assert binary_search(arr, target) == -1, "Test case 8 failed"

    print("All test cases passed.")


# Run the test function
test_binary_search()
