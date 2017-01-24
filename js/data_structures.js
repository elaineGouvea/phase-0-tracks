var colors = ["blue", "red", "yellow", "green"];
var names = ["Ed", "Murphy", "Thunder", "Flash"];

colors.push("purple");
console.log(colors);


names.push("Henry");
console.log(names);


var horses = {};
var length = names.length;

for (var i = 0;  i < length; i++) { 
	horses[names[i]] = colors[i]
	}

console.log(horses);

