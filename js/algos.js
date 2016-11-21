// Business Logic
// Function to find th longest element in an array
function longestPhrase(phraseList){
	// create a variable to store the max length
	var maxLength = 0;
	// create a variable to return the max length element value
	var longestString;
	// itetare through each element of the array 
	for (var i = 0; i < phraseList.length; i++) {
		// set a condition to compare elements length 
		if (phraseList[i].length > maxLength) {
			// assign to maxLength the highest length
			var maxLength = phraseList[i].length; 
			// assign to longestString the maxLength item
			var longestString = phraseList[i];
		}
	}
	return longestString;
}

// Function to find a Key-Value Match
function matchFinder(collection1, collection2){
	/*use the bracket notation to access both variable and strings
	iterate through each element of the object to search for equal key-value pairs*/ 
	return Object.keys(collection1).reduce(function(map, key)) {
		if (collection1[key] === collection2[key]) map[key] =collection2[k];
	}
}


// Driver Code:
// call longestPhrase function
console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]));
// create an array to dry invoke function
var phraseList = ["this is a phrase","This is suppose to be the longest phrase","This phrase is longer than the first"];
console.log(longestPhrase(phraseList));

// invoke matchFinder function
var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Tamir", age: 54};
console.log(matchFinder(obj1, obj2));