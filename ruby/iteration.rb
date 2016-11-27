def test_method
	puts "Hello, there!"
	yield("Elaine", "Vilde")
end

test_method {|name1, name2| puts "Hi, #{name1} and #{name2}"}



