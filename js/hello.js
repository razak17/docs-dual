const add = (a, b) => a + b;

const test = 2 + "";
const email = 'Cleta_Blanda15@hotmail.com'

function toTitleCase(str) {
  return str.replace(
    /\w\S*/g,
    (txt) => txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase()
  )
};

const user_email = `I have an ${email}`

console.log("2lalal".split("")[0]);
console.log("This Year's Love!!!")

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

const date = new Date()
// Get date - 24 years
const currentYear = date.getFullYear();
const result = currentYear - 24;
console.log(result);

const startDate = date;
startDate.setFullYear(startDate.getFullYear() - 24);
console.log("DEBUGPRINT[1]: hello.js:55: startDate=", startDate)
