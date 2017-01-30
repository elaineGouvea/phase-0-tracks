# Ask the user for a word to input
# Seperate the word into letters of index
# Change the letters of index to the next letter in alphabet
# - If it is the z then change back to a
# - If it's a space character, keep it as is


def encrypt(word)
	length = word.length
	# puts "The word length is #{length}"
	counter = 0
	encryptedresult = ''

	while counter < length

		if word[counter] == 'z'
			encryptedresult += 'a'
		elsif word[counter] == ' '
			encryptedresult += ' '
		else
			encryptedresult += word[counter].next
		end
		counter += 1
	end
	encryptedresult
end

def decrypt(word)
	counter = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while counter < word.length
		if word[counter] != ' '
			alphabet_index = alphabet.index(word[counter])
			word[counter] = alphabet[alphabet_index - 1]
		end
		counter += 1 
	end
	word
end
 
# User Interface:
puts "Would you like to encrypt or decrypt?"
choice = gets.chomp

puts "Enter password:"
pwd = gets.chomp

if choice == "encrypt"
	p encrypt(pwd)
else
	p decrypt(pwd)
end

# Driver Code:
# Release 3
# p encrypt("abc") 
# p encrypt("zed") 
# p decrypt("bcd") 
# p decrypt("afe") 

# Release 4
# p decrypt(encrypt("swordfish"))  
# This nested method works because first it executes the inner method (encrypt).
# Encrypt returns a string. 
# Decrypt takes the string that encrypt returns.



