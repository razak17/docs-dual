// Define the message
const message = "Data querying and display and Filter chat history by project - Due on 2023-12-12 04:00:00 - In progress. You can find more details about this task [here](https://app.clickup.com/t/86bwp3a46). Visit our website at https://app.clickup.com/abc123 for more info.";

// Define the regular expression pattern
const urlPattern = /https:\/\/app\.clickup\.com\/[^\s)]+/g;

// Check if the pattern matches the message
const match = urlPattern.test(message);
const matchedUrls = message.match(urlPattern);

// Log the result
console.log(match); // This will output true if the link is present in the message
console.log(matchedUrls); // This will output true if the link is present in the message
