# Hangman Game

class Hangman

	attr_reader :player1, :player2, :secret_word, :secret_word_arr, :dashes_arr, :word_length, :guesses, :attempts
  attr_writer :guess 
	# Pseudocode
	# Define players 1 & 2:
		# Input: Arguments passed into initializaton
		# Output: player1 & player2 strings
	# Player 1 input a secret_word
		# Input: string passed into initialization
	def initialize(player1, player2, secret_word)
    @player1 = player1
    @player2 = player2
    @secret_word = secret_word
		# Code: Split the string into characters
		# Output: array of characters (secret_word_arr) 
    @secret_word_arr = secret_word.chars
  	@word_length = @secret_word_arr.length
  	@guess_count = 0
    @is_over = false
    # @guess = nil
    @guesses = []
	end
	# Displays dashes according to the length of the secret_word for player 2 to guess the letters:
	def display_chars
		@dashes_arr = [] 
		@word_length.times { @dashes_arr << "_" }
		@display_chars = @dashes_arr.join(" ")
	end

	# Verifies if the guess is correct:
	def check_guess(guess)
		if @guesses.include?(guess)
			puts 'This is a repeated guess. Try another letter!'	
		else
			@guesses << guess
			if @secret_word_arr.include?(guess)
				# logic to show the guess inside the @dashes_arr
				@word_length.times do |i|
					if @secret_word_arr[i] == guess
						@dashes_arr.delete_at(i)
						@dashes_arr.insert(i, guess)
					end
				end
			else
				@guess_count += 1
				attempts = @word_length - @guess_count
				puts "Incorrect guess. You have #{attempts.to_s} attempts left. Try again!"
			end
		end
		@display_chars
	end

	def is_over
		if @dashes_arr == @secret_word_arr
			is_over = true
			has_winner = true
			puts 'Wow! #{player2} guessed the word and win!!!!'
		elsif @guess_count == @word_length
			is_over = true
			has_winner = false
			puts '#{player2}, not this time... #{player1} win! Game over!'
		end
	end

# - Create a loop so that player 2 can guess a letter until game is_over
	# - Input: string (char)
	# - Code: Check if game is_over. If false, verify if input is new (not already entered): 
		# - If yes, 
			# - If yes, display the letter in its correct position in the word; 
			# - If not, increase the guess_count in 1.
		# - If not, display an alert for user to enter a valid guess.
	# - Output: correct_guess displayed in word || guess_count +1
# - Game is_over if:
	# - guess_count is greater than word length, 
		# - Output: message "Player 2 lose & player 1 win". Exit program.
	# - correct_guess is equal to word_length
		# - Output: tell player 2 won & player 1 lost. Exit program.
end

# Interface
puts "Let's play Hangman!"
puts "Player 1, enter your name:"
p player1 = gets.chomp
puts "Player 2, enter your name:"
p player2 = gets.chomp
puts "#{player1}, what's the secret word?"
p secret_word = gets.chomp

# DRIVER CODE
game = Hangman.new(player1, player2, secret_word)

puts "#{player2}, you have #{secret_word.length.to_s} attempts to chose a wrong letter. Guess a letter:"
puts game.display_chars

until game.is_over
    puts "#{player2}, guess a letter"
    guess = gets.chomp
    game.check_guess(guess)
    # p @guesses
    # puts game.

    # game.char = char
    # game.guess_count += 1
end

