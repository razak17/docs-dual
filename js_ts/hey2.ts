const sum = (a: number, b: number) => a + b;

console.log(sum(2, 3));
console.log(sum(4, 3));
console.log(sum(4, 2));
console.log("Hello");
// console.log(sum("", ""));
const lol = 'lol';
//     ^?

const some_user: string = "some guy";
const user: string = "some guy";
//     ^?
const username = "zoey101411111";
//        ^?

const child: string = "user.email";
//      ^?
console.debug("DEBUGPRINT[1]: hey.ts:9: child=", child);
console.log("DEBUGPRINT[1]: hey.ts:13: username=", username);

type MyType = {
  name: string;
};

// const myType: MyType = {
//   id: "some name",
// };

// console.debug("DEBUGPRINT[2]: hey.ts:18: myType=", myType);

const myType2: MyType = {
  name: "some name",
};
