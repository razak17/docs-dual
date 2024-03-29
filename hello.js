const add = (a, b) => a + b;

const test = 2 + "";



function toTitleCase(str) {
  return str.replace(
    /\w\S*/g,
    (txt) => txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase()
  );
}

console.log("2lalal".split("")[0]);

console.log(toTitleCase("hello world mom dad"));

console.log(add(2, 3));
console.log(add(12, 31));

// HTML
const hello = `
  <div>
    <h1 className='hello'>Hello World</h1>
    <p className='hello'>Hello World</p>
  </div>
`;

function evenList(arr) {
  for (let i = 0; i < arr; i++) {
    if (i % 2 == 0) return true;
    return false;
  }
}

const html = /* html */ `
<p>Hi, my name is <strong>John</strong> and I'm a <em>web developer</em>.</p>
`;

const sql = /* sql */ `
SELECT * FROM users WHERE name = 'John' AND role = 'web developer'
`;

console.log(add(12, 33));
