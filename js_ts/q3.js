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
      dbQuery += `segments IN ('${query[i]}')`;
    }
  }

  if (parenthesisStack.length > 0) {
    throw new Error("Invalid query: Unbalanced parentheses");
  }

  return dbQuery;
}

const query = ["(", "1234567", "AND", "2345678", ")", "OR", "NOT", "5678901"];
const dbQuery = convertToDbQuery(query);
const query1 = ["(", "1234567", "AND", "2345678", ")", "OR", "NOT", "5678901"];
const query2 = ["1234567", "AND", "(", "2345678", "OR", "5678901", ")", "AND", "NOT", "8901234"];
const query3 = ["1234567", "AND", "2345678", "AND", "NOT", "5678901"];
const query4 = ["(", "1234567", "AND", "2345678", ")", ")", "OR", "NOT", "5678901"];

console.log(dbQuery)
console.log(convertToDbQuery(query1));
console.log(convertToDbQuery(query2));
console.log(convertToDbQuery(query3));

// "query": "SELECT * from mock_entities;"
// "query": "SELECT sum(size) as total_count from mock_entities;"
// "query": "SELECT sum(size) as total_count from mock_entities WHERE segments IN ('1234567') AND segments IN ('2345678') OR NOT segments IN ('5678901');"
// Assuming you have a database connection and a table named "customers"
const sql = `SELECT * FROM customers WHERE ${dbQuery}`;
// Execute the SQL query and fetch the results from the database

