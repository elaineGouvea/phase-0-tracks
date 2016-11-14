# Hangman Game
# Specs:
# One user can enter a word, and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

# Pseudocode
# - Prompt: "Who's player 1?"
# - player_1 = gets.chomp
# - Prompt: "Who's player 2?"
# - player_2 = gets.chomp
# - Prompt player 1 to input a word
# 	- Input: string
# 	- Code: Split the string into characters. string.split("")
# 	- Output: array of characters (secret_word_chars)
# - Length of the word is displayed to player 2 
# - Create a loop to prompt player 2 to guess a letter until game is_over
# 	- Input: string (char)
# 	- Code: Check if game is_over. If false, verify if the input was already entered. If not, increase the guess_count in 1. Verify if the guess is correct. If yes, display the letter in its correct position in the word.
# 	- Output: correct_guess displayed in word
# - Game is_over if:
# 	- guess_count is greater than word length, 
# 		- Output: message "Player 2 lost & player 1 won". Exit program.
# 	- correct_guess is equal to word_length
# 		- Output: tell player 2 won & player 1 lost. Exit program.

# Business Logic
class HangmanGame
	def initialize
		@secret_word_chars = []
		@guess_count = 0
    @is_over = false
    @win = false
	end

	def check_guess
		
	end

end

# Interface
puts "Who's player 1?"
player_1 = "gets.chomp"
puts "Who's player 2?"
player_2 = "gets.chomp"

puts "#{player_1}, what's the secret word?"
secret_word = "chair"
secret_word_chars = secret_word.split("")

secret_word_chars.length.times do 
	print "_" + " " 
end

until HangmanGame.is_over
	puts "#{player_2}, guess a letter"
	char = gets.chomp
end


# Driver Code
puts "Should return true to player_1 == string"
p player_1.instance_of?(String) == true
puts "Should return true to player_2 == string"
p player_2.instance_of?(String) == true
puts "Should return true to secret_word_chars == array"
p secret_word_chars.instance_of?(Array) == true
puts "Should return secret_word_chars array"
p secret_word_chars
puts "Should return true if guess == string"
p char.instance_of?(String) == true

