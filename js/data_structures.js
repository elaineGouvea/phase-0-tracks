var colors = [ "red", "green", "yeallow", "blue"]

var names =["Ace", "Ben", "California", "Dancer"]

colors.push("purple")
names.push("Ed")

var horses = {}
for (var i = 0; i < names.length; i++) {
	horses['name'] =  names[i];
	horses['color'] = colors[i];


console.log("The horse's name is " + horses['name'] + ".");
console.log("The horse's color is " + horses.color + ".");
console.log("_______________________________");
}