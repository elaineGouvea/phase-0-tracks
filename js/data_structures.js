// Release 0
// Create arrays of colors and names:
var colors = ["blue", "red", "yellow", "green"];
var names = ["Ed", "Murphy", "Thunder", "Flash"];
// Add an item to 'colors' array
colors.push("purple");
console.log(colors); 
// Add an item to 'names' array
names.push("Henry");
console.log(names);

// Release 1
var horses = {}; //Create an object
var length = names.length;
// Loop through the arrays to create an object:
// keys: 'colors' elements values: 'names' elements
for (var i = 0;  i < length; i++) { 
	horses[names[i]] = colors[i]
	}
console.log(horses);

// Release 2
// Create Object example:
var cars = {
	brand: 'Jeep', 
	year: 2013, 
	model: 'grand cherokee', 
	is_running: false,
	use: function(is_running){
		if (cars.is_running == true) {
			console.log("You can drive!")
		}
		else {
			console.log("This car is broken!")		
		}
	}
}

console.log(cars);
cars.use();
console.log("");
// Add a constructor function to create a car
function Car(brand, year, model, is_running) {
this.brand = brand;
this.year = year;
this.model = model;
this.is_running = is_running;
this.use = function(is_running) {
  if (this.is_running == true) {
    console.log("You can drive!")
    } else {
    console.log("This car is broken!")        
    }
  }
}
// Create new cars using the constructor function:
var car = new Car('Mini', 2015, 'Mini cooper', true)
console.log(car);
console.log("");
car.use();
console.log("");
var new_car = new Car('Fiat', 2004, '500', false)
console.log(new_car);
console.log("");
new_car.use();

// Release 3
// for (var property in car) {
//    if (car.hasOwnProperty(property)) {
//        console.log("The car's " + property + " is " + car[property]);
//    }
// }