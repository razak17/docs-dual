// const firstName = 'John';
// const lastName = 'Doe';
// const age = 30;
// const greeting = `Hello ${firstName} ${lastName}, you are ${age} years old`;
//
//
// const lastDate = '2023-12-13T10:36:08.984000';
// const ll = lastDate.split('.').slice(0, 1).join('');
// // console.log(ll)
//
// const names = ['John', 'Doe', 'Jane', 'Doe'];
//
// names.map((name, index) => {
//   if (name === 'John') {
//     console.log({name})
//     return
//   }
//   console.log({name})
// })
//
// for (const name of names) {
//   if (name === 'John') {
//     console.log({ name });
//     if true {
//       if true {
//         if true {
//
//         }
//
//       }
//     }
//     break;
//   }
//   console.log({ name });
// }
//
// const counts = []
//
// for (const counts of count) {
//   console.log({ counts });
// }

const data = [
  {
    "id": 7,
    "date": "2024-01-28T22:47:11.051Z",
    "value": "2",
    "comments": "",
  },
  {
    "id": 8,
    "date": "2024-01-21T20:47:11.051Z",
    "value": "2",
    "comments": "",
  },
];

data.sort((a, b) => {
  const dateA = new Date(a.date);
  const dateB = new Date(b.date);

  return dateA - dateB;
});

console.log(data);
