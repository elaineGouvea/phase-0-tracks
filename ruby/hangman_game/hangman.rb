# Hangman Game
# Specs:
# One user can enter a word, and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

# Pseudocode
# - Define players 1 & 2:
	# - Input: Arguments passed into initializaton
	# - Output: player1 & player2 strings
# - Player 1 input a secret_word
	# - Input: string passed into initialization
	# - Code: Split the string into characters. string.split("")
	# - Output: array of characters (secret_word_chars)
# - Display dashes according to the length of the word to player 2 
# - Create a loop so that player 2 can guess a letter until game is_over
	# - Input: string (char)
	# - Code: Check if game is_over. If false, verify if input is new (not already entered): 
		# - If yes, verify if the guess is correct:
			# - If yes, display the letter in its correct position in the word; 
			# - If not, increase the guess_count in 1.
	# - Output: correct_guess displayed in word || guess_count +1
# - Game is_over if:
	# - guess_count is greater than word length, 
		# - Output: message "Player 2 lose & player 1 win". Exit program.
	# - correct_guess is equal to word_length
		# - Output: tell player 2 won & player 1 lost. Exit program.


