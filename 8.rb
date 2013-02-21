#Write a method called product_odd which takes as its input an array of integers 
#and returns the product of all the odd integers in the array. Remember that 
#technically 0 is an even integer.

#For example:



def product_odd(array)
	new_array = []

	array.each do |x|
		if x % 2 != 0
			new_array << x
		else
		end
	end

	total = 1
	new_array.each {|x| total *= x}
	total
end

puts product_odd([1,2,3])     # returns 3, because 2 is even
puts product_odd([0,-1,-10])  # returns -1, because 0 and -10 are even
puts product_odd([1,2,3,4,5]) # returns 15, because 4 and 2 are even