// Find the longest phrase:
// Business Logic
// Takes an array of phrases and return the longest:
function lengthComparator(phrases) {
	// sets an array to store each phrase length
	var phrasesLength = [];
	// var to store the highest number of phrasesLength:
	var max;
	// var to store the index of max:
	var idx;
	// sets a variable to store the longest phrase
	var longestPhrase = '';
	// while index <= phrases array length
	for (var i = 0; i < phrases.length; i++) {
		// gets the length of each item of the phrases array
		phrasesLength.push(phrases[i].length);
  }
  max = Math.max.apply(null,phrasesLength);
  idx = phrasesLength.indexOf(max);
  return phrases[idx];
}

// Finds a Key-Value Match
function matchFinder(collection1, collection2){
	if (collection1.name === collection2.name) {
		return true;
	}
	if (collection1.age === collection2.age) {
		return true;
	}
	return false;
}


// Driver Code
// Release 1
var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Tamir", age: 54};
console.log('expect matchFinder(obj1, obj2) to return true')
console.log(matchFinder(obj1, obj2));

var obj3 = {name: "John", age: 6};
var obj4 = {name: "Mary", age: 98};
console.log('expect matchFinder(obj3, obj4) to return false')
console.log(matchFinder(obj3, obj4));

// Release 0
phrasesArr = ["long phrase","longest phrase","longer phrase"];
var result = lengthComparator(phrasesArr);

console.log('expect longest phrase to be longest phrase:');
console.log(result)

wordsArr = ["ball", "car", "elevator", "telephone"]
var result2 = lengthComparator(wordsArr);
console.log('expect longest word to be telephone:');
console.log(result2)


