// Reverse a string
// Pseudocode:
// Function that takes a string as a paremter:
function reverse(str){
	// Creates a new var to store function result;
	var strReversed = '';
	// For each char of the string, starting from an index equals string length, until the index is greater than or equals 0:
	for (var i = str.length - 1; i >= 0; i--){
		// adds the last char of str (argument) into strReversed
		strReversed += str[i];
	}
	return strReversed;
}
	
// Driver code to run the function:
var str = 'hello'
var newStr = reverse(str)
console.log(newStr)

// Prints the variable if certain condition is true;
if (typeof newStr === 'string') {
	console.log(newStr + ' is ' + str + ' reversed!');
}