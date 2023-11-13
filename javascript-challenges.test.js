// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.
// describe ("codedMessage", () => {
//     it ("takes in a string and returns a string with a coded message.", () => {
//         expect(codedMessage(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
//         expect(codedMessage(secretCodeWord2)).toEqual("G0bbl3dyg00k")
//         expect(codedMessage(secretCodeWord3)).toEqual("3cc3ntr1c")
//     })
// })

const secretCodeWord1 = "Lackadaisical"
// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook"
// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric"
// Expected output: "3cc3ntr1c"

// b) Create the function that makes the test pass.

// Pseudo code:
const codedMessage = (string) => {
    // create a conditional statement that goes through each word and replaces the letters with numbers
    if (string.includes("a") || string.includes("A")){
    return string.replace(/a/gi, "4")
    } else if (string.includes("e") || string.includes("E")){
    return string.replace(/e/gi, "3")
    } else if (string.includes("i") || string.includes("I")){
        return string.replace(/i/gi, "1")
    } else if (string.includes("o") || string.includes("O")){
        return string.replace(/o/gi, "0")
    } else {
        return string
    }
}
// the test failed on the first variable. I tried using .map and .filter instead but couldnt figure out how to use it on every string. I ended up just leaving the function like this.
// yarn run v1.22.19
// warning package.json: No license field
// $ /Users/learnacademy/Desktop/week-5-assessment-Danny-DeLaRosa/node_modules/.bin/jest
//  FAIL  ./javascript-challenges.test.js
//   codedMessage
//     ✕ takes in a string and returns a string with a coded message. (2 ms)

//   ● codedMessage › takes in a string and returns a string with a coded message.

//     expect(received).toEqual(expected) // deep equality

//     Expected: "L4ck4d41s1c4l"
//     Received: "L4ck4d4isic4l"

//       16 | describe ("codedMessage", () => {
//       17 |     it ("takes in a string and returns a string with a coded message.", () => {
//     > 18 |         expect(codedMessage(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
//          |                                               ^
//       19 |         expect(codedMessage(secretCodeWord2)).toEqual("G0bbl3dyg00k")
//       20 |         expect(codedMessage(secretCodeWord3)).toEqual("3cc3ntr1c")
//       21 |     })

//       at Object.toEqual (javascript-challenges.test.js:18:47)

// Test Suites: 1 failed, 1 total
// Tests:       1 failed, 1 total
// Snapshots:   0 total
// Time:        0.116 s, estimated 1 s
// Ran all test suites.
// error Command failed with exit code 1.
// info Visit https://yarnpkg.com/en/docs/cli/run for documentation about this command.

// console.log(codedMessage(secretCodeWord1)
// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.
describe ("fullHouse", () => {
        it ("takes in an array of 5 numbers and determines whether or not the array is a 'full house'", () => {   expect(fullHouse(hand1)).toEqual("true")
            expect(fullHouse(hand2)).toEqual("false")
            expect(fullHouse(hand3)).toEqual("false")
            expect(fullHouse(hand4)).toEqual("true")
        })
    })

const hand1 = [5, 5, 5, 3, 3]
// Expected output: true
const hand2 = [5, 5, 3, 3, 4]
// Expected output: false
const hand3 = [5, 5, 5, 5, 4]
// Expected output: false
const hand4 = [7, 2, 7, 2, 7]
// Expected output: true

// b) Create the function that makes the test pass.

// Pseudo code:
