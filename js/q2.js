function convertToDbQuery(query) {
  let dbQuery = "";
  let parenthesisStack = [];

  for (let i = 0; i < query.length; i++) {
    if (query[i] === "(") {
      dbQuery += "(";
      parenthesisStack.push("(");
    } else if (query[i] === ")") {
      if (parenthesisStack.length > 0) {
        dbQuery += ")";
        parenthesisStack.pop();
      } else {
        throw new Error("Invalid query: Unbalanced parentheses");
      }
    } else if (query[i] === "AND") {
      dbQuery += " AND ";
    } else if (query[i] === "OR") {
      dbQuery += " OR ";
    } else if (query[i] === "NOT") {
      dbQuery += "NOT ";
    } else {
      dbQuery += query[i];
    }
  }

  if (parenthesisStack.length > 0) {
    throw new Error("Invalid query: Unbalanced parentheses");
  }

  return dbQuery;
}

const query1 = ["(", "1234567", "AND", "2345678", ")", "OR", "NOT", "5678901"];
const query2 = ["1234567", "AND", "(", "2345678", "OR", "5678901", ")", "AND", "NOT", "8901234"];
const query3 = ["1234567", "AND", "2345678", "AND", "NOT", "5678901"];
const query4 = ["(", "1234567", "AND", "2345678", ")", ")", "OR", "NOT", "5678901"];

console.log(convertToDbQuery(query1)); // Output: (1234567 AND 2345678) OR NOT 5678901
console.log(convertToDbQuery(query2)); // Output: 1234567 AND (2345678 OR 5678901) AND NOT 8901234
console.log(convertToDbQuery(query3)); // Output: 1234567 AND 2345678 AND NOT 5678901
// console.log(convertToDbQuery(query4)); // Throws an error: Invalid query: Unbalanced parentheses
