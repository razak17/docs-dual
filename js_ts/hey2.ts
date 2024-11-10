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

const jsonStringToHtml = (str: string) => {
	return str.replace(/(?:\r\n|\r|\n)/g, "<br/>");
};

const html = jsonStringToHtml("Aim 1: Optimize and scale up manufacturing of rAAV2tYF-CB-hRS1\nSub Aim 1.1: Develop and validate GMP-compliant production process\nSub Aim 1.2: Produce GMP-grade vector for toxicology studies and clinical trials\n\nAim 2: Conduct IND-enabling toxicology and biodistribution studies\nSub Aim 2.1: Perform dose-ranging toxicity studies in relevant animal models\nSub Aim 2.2: Evaluate biodistribution and persistence of the vector\n\nAim 3: Prepare and submit IND application to the FDA\nSub Aim 3.1: Compile and analyze all preclinical data\nSub Aim 3.2: Develop clinical protocol and regulatory documents\nSub Aim 3.3: Submit IND application and respond to FDA queries");
console.log("DEBUGPRINT[1]: hey2.ts:40: html=", html)
