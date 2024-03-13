const data = [
  { name: 'Jane', age: 30 },
  { name: 'Doe', age: 40 },
  { name: 'John', age: 50 }
]

const latest = data.unshift({ name: 'John', age: 25 })
console.log("DEBUGPRINT[2]: unshift.js:8: latest=", latest)
console.log("DEBUGPRINT[1]: unshift.js:8: data=", data)
