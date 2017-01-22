// Pseudocode - Reverse a string Algorithm
// - Create a function that takes a string as a parameter
// - Create an empty array
// - For each character of the string, iterate through the string length to change the index to a negative one, starting from 0 that becomes -1, 1 that becomes -2, etc
// - Put the reversed string into the new array
// - Join the array into a string again and returns its value

function stringReverse(str){
	var charList = [];
	// console.log( str.split('') );
	for (var char = str.length -1, invertChar = 0; char >= 0 ; char--, invertChar++)
		charList[invertChar] = str[char];
	return charList.join('');
}

// Driver code
newString = stringReverse('hello');
console.log(newString);

// Print the variable if some condition is true:
if (typeof newString === 'string') {
	console.log(newString + " is the original string reversed!");
}