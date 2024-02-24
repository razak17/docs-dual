const html = /* html */ ` 
  <div>
    <h1>Hey</h1>
  </div>
`;

const sql = /* sql */ `
  SELECT * FROM users;
`;

const css = /* css */ `
  .container {
    display: flex;
    justify-content: center;
    align-items: center;
  }
`;

const js = /* js */ `
  const sum = (a, b) => a + b;
`;

const ts = /* ts */ `
  const sum = (a: number, b: number) => a + b;
`;

const json = /* json */ `
  {
    "name": "John",
    "age": 30
  }
`;

const md = /* md */ `
  # Hello
`;

const py = /* py */ `
  def sum(a, b):
    return a + b
`;

const sh = /* sh */ `
  echo "Hello"
`;

const yaml = /* yaml */ `
  name: John
  age: 30
`;

const graphql = /* graphql */ `
  type User {
    name: String
    age: Int
  }
`;

const haskell = /* haskell */ `
  sum a b = a + b
`;
