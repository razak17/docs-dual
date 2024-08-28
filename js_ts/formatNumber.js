// Write a function to format a phone number
// Input: +233 24 123 4567
// Output: 0241234567
// Input: +233 50 123 4567
// Output: 0501234567
// Input: +233 20 123 4567
// Output: 0201234567

function formatNumber(phoneNumber) {
  const formattedNumber = phoneNumber.replace(/\s+/g, "").slice(4);
  return formattedNumber.startsWith("0")
    ? formattedNumber
    : "0" + formattedNumber;
}

console.log(formatNumber('+233 24 123 4567')); // 0241234567
console.log(formatNumber('+233 50 123 4567')); // 0501234567
console.log(formatNumber('+233 20 123 4567')); // 0201234567
