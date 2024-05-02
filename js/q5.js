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

      result = applyQuery(subQuery, result);
    } else {
      result = applyQuery([token], result);
    }
  }

  return result;
}

function applyQuery(subQuery, array) {
  if (subQuery[0] === "AND") {
    return array.filter((obj) => subQuery.slice(1).every((value) => obj.output.includes(value)));
  } else if (subQuery[0] === "NOT") {
    return array.filter((obj) => !subQuery.slice(1).some((value) => obj.output.includes(value)));
  } else {
    return array.filter((obj) => obj.output.includes(subQuery[0]));
  }
}

const query = ["(", "123", "AND", "7878", ")", "AND", "NOT", "999"];
const array = [
  {
    id: 1,
    output: ["123", "7878"]
  },
  {
    id: 2,
    output: ["999"]
  },
  {
    id: 3,
    output: ["999"]
  },
  {
    id: 4,
    output: ["7878"]
  },
  {
    id: 5,
    output: ["123"]
  },
];

const filteredArray = filterArray(query, array);
console.log(filteredArray);
