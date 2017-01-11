arr = [47, 7, 37, 27]

def search_array(arr, number)
	i = 0
	while i < arr.length 
		if arr[i] == number 
		puts i 
		else puts nil 
		end 
	i += 1 
	end 
end 

p search_array(arr, 27)
p search_array(arr, 45)

def fibo(value)
array = [0,1]
  for i in 0..value-3
  sum = array[i] + array[i+1]
  array << sum 
end 
array
end 

p fibo(6)
p fibo(100)

#SORTING METHOD:
#1. Iterates through array
#2. Checks to see which one is greater, move biggest to the left
#3. Continue up to end of the array 


def sorter(array)
	l = array.length 
	loop do 
		swap = false

		(l-1).times do |i|
			if array[i] > array[i+1]
				array[i], array[i+1] = array[i+1], array[i]
				swap = true 
			end 
		end 
		break if not swap 
	end
	array 
end 

hey =[1, 5, 2, 7]
p sorter(hey)



