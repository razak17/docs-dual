import unittest


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


class TestBinarySearch(unittest.TestCase):
    def test_empty_array(self):
        self.assertEqual(binary_search([], 1), -1)

    def test_single_element_found(self):
        self.assertEqual(binary_search([1], 1), 0)

    def test_single_element_not_found(self):
        self.assertEqual(binary_search([1], 2), -1)

    def test_target_at_beginning(self):
        self.assertEqual(binary_search([1, 2, 3, 4, 5], 1), 0)

    def test_target_at_middle(self):
        self.assertEqual(binary_search([1, 2, 3, 4, 5], 3), 2)

    def test_target_at_end(self):
        self.assertEqual(binary_search([1, 2, 3, 4, 5], 5), 4)

    def test_target_not_in_array(self):
        self.assertEqual(binary_search([1, 2, 3, 4, 5], 6), -1)

    def test_array_with_duplicates(self):
        self.assertEqual(binary_search([1, 2, 2, 2, 3], 2), 2)

    def test_array_with_negative_numbers(self):
        self.assertEqual(binary_search([-5, -2, 0, 3, 7], -2), 1)


if __name__ == "__main__":
    unittest.main()


# Run the test function
# test_binary_search()
