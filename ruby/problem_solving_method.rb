# Release 0: Implement a Simple Search

def search_array(arr, number)
	i = 0
  while i < arr.length
		if arr[i] == number
    	return i
    end
	i += 1
  end
end

# Release 1: Calculate Fibonacci Numbers

# Solution 0
def fibonacci(num) 
	fib = [0,1]
  (num - 2).times do 
  	fib << fib[-2] + fib[-1]
  end
  fib[-1]
end

# Solution 1
def fib(num)
arr = [0,1]
i = 0
  while i < num - 2
    arr << arr[-1] + arr[-2]
    i += 1
  end
arr.last
end

# Driver Code:
puts "Expect fibonacci(6) to be equal 5 evaluates to true:"
p fibonacci(6) == 5

if fib(100) == 218922995834555169026
	puts "The 100th number in Fibonacci sequence is 218922995834555169026"	
end 

# Release 2: Sort an Array

