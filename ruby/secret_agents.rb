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

encrypt("hey there") 


