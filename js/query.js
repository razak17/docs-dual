// const query = ["(", "1234567", "AND", "2345678", ")", "OR", "9012345"];
const query = ["NOT", "1234567"];
const array = [
  {
    "audience": "Audience A",
    "reach": 15000,
    "segments": [1234567, 2345678, 3456789]
  },
  {
    "audience": "Audience B",
    "reach": 20500,
    "segments": [4567890, 5678901]
  },
  {
    "audience": "Audience C",
    "reach": 18000,
    "segments": [7890123, 8901234, 9012345]
  },
  {
    "audience": "Audience D",
    "reach": 22000,
    "segments": [5432109, 4321098]
  },
  {
    "audience": "Audience E",
    "reach": 17000,
    "segments": [6543210, 7654321]
  },
  {
    "audience": "Audience F",
    "reach": 19000,
    "segments": [8765432, 9876543]
  },
  // ... rest of the array objects
];

// Function to check if a segment is present in the query
const isSegmentPresent = (segment, query) => {
  if (query.includes(segment)) {
    return true;
  }
  return false;
};

// Function to evaluate the query and filter the array
const evaluateQuery = (query, array) => {
  let filteredArray = array.filter((item) => {
    let match = false;

    // Check if any of the segments in the item match the query
    item.segments.forEach((segment) => {
      if (isSegmentPresent(segment.toString(), query)) {
        match = true;
      }
    });

    return match;
  });

  return filteredArray;
};

// Function to sum up the reach of items that match the query
const sumReach = (filteredArray) => {
  let sum = 0;

  filteredArray.forEach((item) => {
    sum += item.reach;
  });

  return sum;
};

// Evaluate the query and sum up the reach
const filteredArray = evaluateQuery(query, array);
const totalReach = sumReach(filteredArray);

console.log("Filtered Array:", filteredArray);
console.log("Total Reach:", totalReach);
