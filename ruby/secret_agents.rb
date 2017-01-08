# Ask the user for a word to input
# Seperate the word into letters of index
# Change the letters of index to the next letter in alphabet
# - If it is the z then change back to a
# - If it's a space character, keep it as is



	print "Enter word: "
	word = gets.chomp


def encrypt (word)

	puts length = word.length
	puts "The word length is #{length}"

	counter = 0
	encryptedresult = ""

	while counter < length

		if word[counter] == 'z'
			encryptedresult += "a"
		elsif word[counter] == ' '
			encryptedresult += " "
		else
			encryptedresult += word[counter].next
		end
		counter += 1
	end

	puts "#{encryptedresult}"
end

def decrypt (encrypt)
puts "#{encryptedresult}"

end








encrypt (word)

decrypt