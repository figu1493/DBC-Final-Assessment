#Explain in plain English the difference between return and puts. 
#You're free to use code examples to illustrate your point.

# Example 1:
def return_value(x)
	if x > 1
		return x
	else
	end
end

return_value(5)

# Example 2:
def puts_value(x)
	if x > 1
		puts x
	else
	end
end

puts_value(10)

# Example 3:
def return_array(array)
	array.each {|x| return x}
end

return_array([nil,1,2,3,4,5,6,7,8,9,10])

# Example 4:
def puts_array(array)
	array.each {|x| puts x}
end

puts_array([nil,1,2,3,4,5,6,7,8,9,10])
	
# Answer: the difference between puts and return is that when you puts a value it
# prints the value on a new line. In example 4 you can see that each value is printed 
# out on a separate line using puts, while in example 3 no values are printed out and 
# they are simply returned to the console. 




