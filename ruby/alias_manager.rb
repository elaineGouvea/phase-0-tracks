# Alias Manager
# Takes a spy real name and create an alias.
# - Split a 'full_name'string in two: first_name & last-name;
# - Swap the order of the names: last_name & first-name;
# - Separate the names into characters;
# - Detect vowels;
# - Change each vowel to the next one ('u' should be 'a');

def change_char(char)
	alphabet = 'abcdefghijklmnopqrstuvwxyz'
	vowels = 'aeiou'
	vowels_list = vowels.split('')
	char = char.downcase
	consonants = alphabet.split('') - vowels_list

	if !alphabet.index(char)
		' '
	elsif vowels.include? char
		position = vowels.index(char)
		return vowels.split('').rotate(1)[position]
	else 
		consonants[consonants.index(char) + 1]
	end
end

def alias_generator(name)
	char_index = 0
	alias_name = ''
	while char_index < name.length
		alias_name << change_char(name[char_index])
		char_index += 1
	end
	if alias_name.include?(" ") then
		# alias_name.split(' ')[0].capitalize + ' ' + alias_name.split(' ')[1].capitalize
		alias_name.split(' ').map { |name| name.capitalize  }.join(' ')
	else
		alias_name.split(' ')[0].capitalize
	end
end

# full_name = "Felicia Torres"
# split_name = full_name.split(' ')
# invert_name = split_name.reverse.join(' ')
# p invert_name

# Interface

loop do 
	puts "Welcome to the Alias Generator! Enter your full name and we'll return a cool fake one. Type 'quit' when done."
	input = gets.chomp
	split_name = input.split(' ')
	invert_name = split_name.reverse.join(' ')
	puts alias_generator(invert_name)
	break if input == 'quit'
end
# p invert_name



#Tests:
# puts "Should return a space if input is not a letter:"
# p next_vowel('elaine gouvea') == " "

# puts "Should return the next vowel if input contains vowels:"
# p next_vowel("passeio")
