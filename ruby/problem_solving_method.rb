def search_array(array, number)
	i = 0
	while i < array.length
		if number == array[i]
			return i 
		else 
			i+=1
		end		
	end
	return nil
end
array = [1, 24, 52, 3]

p search_array(array, 102)
