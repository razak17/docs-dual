function sortCards(cards) {
    // Helper function to get numeric value of a card
    function getCardValue(card) {
        if (typeof card === 'number') return card;
        switch (card) {
            case 'Jack': return 11;
            case 'Queen': return 12;
            case 'King': return 13;
            case 'Ace': return 14;
            default: return 0; // For any unexpected values
        }
    }

    // Custom sort function
    return cards.sort((a, b) => {
        return getCardValue(a) - getCardValue(b);
    });
}

// Test the function
let cards = ['Jack', 8, 2, 2, 6, 'King', 5, 3, 'Queen', 'King', 'Queen'];
console.log(sortCards(cards));


// Online Javascript Editor for free
// Write, Edit and Run your Javascript code using JS Online Compiler

/*

Write a function that sorts an array card ranks in ascending order based on standard playing card ranks. (from lowest to highest)
cards = ['Jack', 8, 2, 2, 6, 'King', 5, 3, 'Queen', 'King', 'Queen'];

*/

// console.log("Try programiz.pro");

const arr = ['Jack', 8, 2, 2, 6, 'King', 5, 3, 'Queen', 'King', 'Queen', 'Jack'];

function sortCardRanks(rank) {
    if (typeof rank === "number") {
        return rank
    }

    switch (rank) {
        case 'Jack':
            return 11;
        case 'Queen':
            return 12;
        case 'King':
            return 13;
        default:
            return 0;
    }
}

const sorted = arr.sort((a, b) => {
    return sortCardRanks(a) - sortCardRanks(b);
})

console.log(sorted)
