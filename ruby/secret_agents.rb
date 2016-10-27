=begin
The encrypt method needs to accept a string
We need a loop to go through each character of the string;
We need to call .next! method on each character when:
	if character is not a space character.
=end

def encrypt(password)
	counter = 0
	while counter < password.length
		if password[counter] != " "
		password[counter] = password[counter].next!
		end
	counter +=1
	end

	p password
end

=begin
The decrypt method needs to accept a string;
We need a loop to go through each character of the string;
We need to find the index of each character of the alphabet:
 if character is not a space character,
 	we change the character to the alphabet-string-character at index minus one.
=end


def decrypt(password)
	counter = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while counter < password.length
		if password[counter] != " "
			alphabet_index = alphabet.index(password[counter])
			password[counter] = alphabet[alphabet_index - 1]
		end
		counter += 1 
	end
	p password
end

