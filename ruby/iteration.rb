def test_method
	puts "Hello, there!"
	yield("Elaine", "Vilde")
end

test_method {|name1, name2| puts "Hi, #{name1} and #{name2}"}

Hollywood_movie_stars = ["Tom Cruise", "Brad Pitt", "Angelia Jolie", "Mel Gibson"]

Stars_and_movies = {"Tom Cruise" => "Jerry MacGuire", "Brad Pitt" => "Smith", "Angelina Jolie" => "Smith", "Mel Gibson" => "Hamlet"}

# Using .each
puts Hollywood_movie_stars

Hollywood_movie_stars.each do |star|
	puts "#{star}"
end

puts Hollywood_movie_stars

puts Stars_and_movies
Stars_and_movies.each do |star, movie|
	puts "#{star} was in #{movie}"
end
puts Stars_and_movies

# Using .map!

Hollywood_movie_stars.map! do |star|
	star.downcase
end
puts Hollywood_movie_stars

# Release 2
# Working with Arrays
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

numbers.delete_if {|number| number < 5}
p numbers

numbers_2 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
numbers_2.delete_if {|number| number > 5}
p numbers_2

numbers_3 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
numbers_3.reject! {|number| number == 4}
p numbers_3

numbers_4 = [1, 2, 3, 4, 5, 6, 7, 8, 9]

numbers_4.select! {|number| number <=3 }

p numbers_4

# Working with Hashes
numbers5 = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five"}
p numbers5
# numbers5.delete_if {|number, name| number < 5}
# p numbers5

# numbers5.delete_if {|number, name| number < 4}
# p numbers5

numbers5.reject! {|number, name| number == 4}
p numbers5

