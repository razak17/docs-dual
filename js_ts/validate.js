function validateTime(start_time, end_time) {
  // Extract hour, minute, and period from start_time
  const start_parts = start_time.match(/(\d+):(\d+)([AP]M)/);
  const start_hour = parseInt(start_parts[1]);
  const start_minute = parseInt(start_parts[2]);
  const start_period = start_parts[3];

  // Extract hour, minute, and period from end_time
  const end_parts = end_time.match(/(\d+):(\d+)([AP]M)/);
  const end_hour = parseInt(end_parts[1]);
  const end_minute = parseInt(end_parts[2]);
  const end_period = end_parts[3];

  // Convert start and end time to 24-hour format for comparison
  const start_hour_24 =
    start_period === "PM" && start_hour !== 12 ? start_hour + 12 : start_hour;
  const end_hour_24 =
    end_period === "PM" && end_hour !== 12 ? end_hour + 12 : end_hour;

  // Compare start time with end time
  if (start_hour_24 > end_hour_24) {
    return false; // Start time is after end time
  } else if (start_hour_24 === end_hour_24 && start_minute > end_minute) {
    return false; // Start time is after end time
  }

  return true; // Start time is before or equal to end time
}

const start_time = "12:00AM";
const end_time = "12:15AM";
const isValid = validateTime(start_time, end_time);
console.log(isValid); // Output: true
console.log(validateTime("12:00AM", "2:00AM")); // Output: true

function formatTime(hours, minutes) {
  // Ensure hours and minutes are valid numbers
  if (isNaN(hours) || isNaN(minutes)) {
    throw new Error("Invalid input. Please provide valid numbers for hours and minutes.");
  }

  // Convert hours and minutes to integers
  hours = parseInt(hours);
  minutes = parseInt(minutes);

  // Validate the range of hours and minutes
  if (hours < 0 || hours > 23 || minutes < 0 || minutes > 59) {
    throw new Error("Invalid input. Please provide valid values between 0 and 23 for hours and 0 and 59 for minutes.");
  }

  // Format the time to 24-hour format
  return `${hours.toString().padStart(2, '0')}:${minutes.toString().padStart(2, '0')}`;
}

// Example usage
const hours = 9;
const minutes = 30;
const formattedTime = formatTime(hours, minutes);
console.log(formattedTime); // Output: "09:30"
