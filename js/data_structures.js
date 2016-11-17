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

function car(year, color, brand){
	this.year = year;
	this.color = color;
	this.brand = brand;

	this.accelerate = function() {console.log("Vrooom! Vrooom!")};
	this.honk = function() {console.log("Beep! Beep!")};
}

var oldCar = new car (1950, "red", "Ford Mustang");
var smallCar = new car (2012, "light green", "Fiat 500");

console.log("This " + oldCar.brand + " car is from " + oldCar.year);
oldCar.accelerate();
oldCar.honk();

console.log("This " + smallCar.color + " " + smallCar.brand + "car is from " + smallCar.year);
smallCar.accelerate();
smallCar.honk();