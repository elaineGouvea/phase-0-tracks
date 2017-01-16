# Alias Manager
# Takes a spy real name and create an alias.
# - Create a variable to split a 'full_name'string in an array with 2 strings: first_name & last-name;
# - Swap the order of the names: last_name & first-name. Create a variable to join the values and store it;
# - Create a loop to iterate into each character;
# - Change all the characters to lowercase;
# - Detect the characters that are not letters;
# - Detect vowels;
# - Change each vowel to the next one ('u' becomes 'a');
# - Detect consonants;
# - Change each consonants to the next consonant ('d' becomes 'f, 'z' becomes 'b');
# - Store all the changings into a new variable;
# - Capitalize the first letter of each word of this variable.
# 	-

agents = {}

def change_char(char)
	alphabet = 'abcdefghijklmnopqrstuvwxyz'
	vowels = 'aeiou'
	vowels_list = vowels.split('')
	char = char.downcase
	consonants_list = alphabet.split('') - vowels_list

	if !alphabet.index(char)
		' '
	elsif vowels.include? char
		position = vowels.index(char)
		return vowels_list.rotate(1)[position]
	else 
		consonants_list.rotate(1)[consonants_list.index(char)]
	end
end

def alias_generator(name, agents, input)
	char_index = 0
	alias_name = ''

	while char_index < name.length
		alias_name << change_char(name[char_index])
		char_index += 1
	end
	if alias_name.include?(' ') then
		alias_name.split(' ').map(&:capitalize) #{ |name| name  }.join(' ')
	else
		alias_name.split(' ')[0]
	end
	agents[input] = alias_name
end


# Interface

loop do 
	puts "Welcome to the Alias Generator! Enter your full name and we'll return a cool fake one. Type 'quit' when done."
	input = gets.chomp
	break if input == 'quit'
	split_name = input.split(' ')
	invert_name = split_name.reverse.join(' ')
	puts alias_generator(invert_name, agents, input)
end

agents.each do |real_name, nickname|
  puts "#{real_name} is also known as #{nickname}"
end


# Driver Code: 

# full_name = "Felicia Torres"
# split_name = full_name.split(' ')
# invert_name = split_name.reverse.join(' ')
# p invert_name

# puts '#{agent[0]} is also known as #{agent[1]}'


