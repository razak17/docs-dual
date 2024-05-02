function filterArray(query, array) {
  const stack = [];
  let result = [];

  for (let i = 0; i < query.length; i++) {
    const token = query[i];

    if (token === "(" || token === "AND" || token === "NOT") {
      stack.push(token);
    } else if (token === ")") {
      const subQuery = [];
      let top = stack.pop();

      while (top !== "(") {
        subQuery.unshift(top);
        top = stack.pop();
      }

      result = applyQuery(subQuery, array);
    } else {
      result = applyQuery([token], array);
    }
  }

  return result;
}

function applyQuery(subQuery, array) {
  console.log({subQuery})
  // if (subQuery[0] === "AND") {
  //   return array.filter((obj) => subQuery.slice(1).every((value) => obj.output.includes(value)));
  // } else if (subQuery[0] === "NOT") {
  //   return array.filter((obj) => !subQuery.slice(1).some((value) => obj.output.includes(value)));
  // } else {
  //   return array.filter((obj) => obj.output.includes(subQuery[0]));
  // }
}

const query = ["(", "123", "AND", "7878", ")", "OR", "NOT", "999"];
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
];

const filteredArray = filterArray(query, array);
console.log(filteredArray);
