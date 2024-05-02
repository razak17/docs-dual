const query = ["(", "1234567", "AND", "2345678", ")"]
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
  {
    "audience": "Audience G",
    "reach": 24000,
    "segments": [1098765, 2109876]
  },
  {
    "audience": "Audience H",
    "reach": 16000,
    "segments": [3210987, 4321098]
  },
]

const filteredArray = array.filter(item => {
  let match = true;
  let i = 0;

  while (i < query.length) {
    if (query[i] === "(") {
      // Handle opening parenthesis
      let subQuery = [];
      let count = 1;
      i++;

      while (count > 0) {
        subQuery.push(query[i]);
        if (query[i] === "(") count++;
        if (query[i] === ")") count--;
        i++;
      }

      const subQueryResult = evaluateSubQuery(subQuery, item.segments);
      match = match && subQueryResult;
    } else if (query[i] === "AND") {
      // Handle AND operator
      match = match && evaluateOperator("AND", item.segments, query[i + 1]);
      i++;
    } else if (query[i] === "OR") {
      // Handle OR operator
      match = match || evaluateOperator("OR", item.segments, query[i + 1]);
      i++;
    } else if (query[i] === "NOT") {
      // Handle NOT operator
      match = match && !evaluateOperator("OR", item.segments, query[i + 1]);
      i++;
    } else {
      // Handle segment ID
      match = match && item.segments.includes(parseInt(query[i]));
    }

    i++;
  }

  return match;
});

function evaluateSubQuery(subQuery, segments) {
  let subQueryResult = true;
  let i = 0;

  while (i < subQuery.length) {
    if (subQuery[i] === "AND") {
      // Handle AND operator
      subQueryResult = subQueryResult && evaluateOperator("AND", segments, subQuery[i + 1]);
      i++;
    } else if (subQuery[i] === "OR") {
      // Handle OR operator
      subQueryResult = subQueryResult || evaluateOperator("OR", segments, subQuery[i + 1]);
      i++;
    } else if (subQuery[i] === "NOT") {
      // Handle NOT operator
      subQueryResult = subQueryResult && !evaluateOperator("OR", segments, subQuery[i + 1]);
      i++;
    } else {
      // Handle segment ID
      subQueryResult = subQueryResult && segments.includes(parseInt(subQuery[i]));
    }

    i++;
  }

  return subQueryResult;
}

function evaluateOperator(operator, segments, segmentId) {
  if (operator === "AND") {
    return segments.includes(parseInt(segmentId));
  } else if (operator === "OR") {
    return segments.includes(parseInt(segmentId));
  }

  return false;
}

console.log(filteredArray);
