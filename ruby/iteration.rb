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
print Hollywood_movie_stars



