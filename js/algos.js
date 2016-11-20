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

// Driver Code:
// call the function
console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]));
// create an array to dry invoke function
var phraseList = ["this is a phrase","This is suppose to be the longest phrase","This phrase is longer than the first"];
console.log(longestPhrase(phraseList));
