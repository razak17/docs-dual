const arr = ["(1, 2)", "(3, 4)", "(5, 6)"];

for (const str of arr) {
  const [child, parent] = str.replace(/[()]/g, "").split(",");
  console.log({ child });
  console.log({ parent });
}

const regex2 = new RegExp(/(\d+), (\d+)/);
// const regex = new RegExp('gr[ae]y');
