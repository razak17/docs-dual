// binarySearch.ts
function binarySearch(array: number[], target: number): number {
  let start = 0;
  let end = array.length - 1;
  while (start <= end) {
    const mid = Math.floor((start + end) / 2);
    if (array[mid] === target) {
      return mid;
    } else if (array[mid] < target) {
      start = mid + 1;
    } else {
      end = mid - 1;
    }
  }
  return -1;
}
console.log(binarySearch([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 5))

// treeConstructor.ts
function treeConstructor(strArr: string[]) {
  const parent: string[] = [];
  const child: string[] = [];
  for (const str of strArr) {
    const [childNode, parentNode] = str.replace(/[()]/g, "").split(",");
    parent.push(parentNode);
    child.push(childNode);
  }
  const parentMap = new Map<string, number>();
  for (const parentNode of parent) {
    parentMap.set(parentNode, (parentMap.get(parentNode) ?? 0) + 1);
  }
  const childMap = new Map<string, number>();
  for (const childNode of child) {
    childMap.set(childNode, (childMap.get(childNode) ?? 0) + 1);
  }
  for (const count of [...parentMap.values()]) {
    if (count > 2) {
      return false;
    }
  }
  for (const count of [...childMap.values()]) {
    if (count > 1) {
      return false;
    }
  }
  return true;
}
console.log(treeConstructor(["(1,2)", "(2,4)", "(5,7)", "(7,2)", "(9,5)"])); // true
console.log(treeConstructor(["(1,2)", "(3,2)", "(2,12)", "(5,2)"])); // false


// productExceptSelf.js
function productExceptSelf(nums) {
  // Set up an empty array as our result
  const result = [];

  // Initialize a prefix tracker at 1
  let prefix = 1;

  for (let i = 0; i < nums.length; i++) {
    result[i] = prefix;
    prefix *= nums[i];
  }

  // Initialize a suffix tracker at 1
  let suffix = 1;

  for (let i = nums.length - 1; i >= 0; i--) {
    result[i] *= suffix;
    suffix *= nums[i];
  }

  return result;
}
console.log(productExceptSelf([1, 2, 3, 4]));

// validAnagram.ts
function validAnagram(s: string, t: string): boolean {
  if (s.length !== t.length) {
    return false;
  }

  let sCount = new Map<string, number>();
  let tCount = new Map<string, number>();

  for (let i = 0; i < s.length; i++) {
    sCount.set(s[i], (sCount.get(s[i]) ?? 0) + 1);
    tCount.set(t[i], (tCount.get(t[i]) ?? 0) + 1);
  }

  // console.log(sCount, tCount);

  for (let i = 0; i < s.length; i++) {
    if (sCount.get(s[i]) !== tCount.get(s[i])) {
      return false;
    }
  }

  return true;
}
console.log(validAnagram("anagram", "nagaram"));

// lengthOfLongestSubstring.ts
function lengthOfLongestSubstring(s: string): number {
  let longest = 0;
  let left = 0;
  let right = 0;
  const set = new Set<string>();

  while (right < s.length) {
    while (set.has(s[right])) {
      set.delete(s[left]);
      left++;
    }
    set.add(s[right]);
    longest = Math.max(longest, right - left + 1);
    right++;
  }

  return longest;
}
console.log(lengthOfLongestSubstring("abcabcbb"));
console.log(lengthOfLongestSubstring("bbbbb"));

// balancedParenthesis.js
// Given a string of parentheses:
// s = "()(()()()()())"
// Remove the minimum amount of parentheses to make the string parentheses balanced in-place
function balancedParenthesis(s) {
  let stack = [];
  let result = [];
  for (let i = 0; i < s.length; i++) {
    if (s[i] === "(") {
      stack.push(i);
    } else if (s[i] === ")") {
      if (stack.length) {
        stack.pop();
      } else {
        result.push(i);
      }
    }
  }
  return result.concat(stack);
}

console.log(balancedParenthesis("()(()()()()())"));
console.log(balancedParenthesis(")()("));
