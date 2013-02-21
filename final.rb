# Question 1:
home_address = "1819 Golden Gate Ave."
home_city = "San Francisco"
home_state = "California"

#________________________________________________________________________________________

# Question 2:
first_name = "Anne"
first_name == "Anne"

#"Spalding" = first_name
"Spalding" == first_name

if first_name == "Anne"
	puts true
else "Spalding" == first_name
	puts true
end

# Answer: The only line of code that does not work is "Spalding" = first_name.
# This is because variables in code can only be written from left to right with 
# one equal sign so first_name = "Anne" is correct. When you use == that is a way
# to evaluate both variables and values whether they are strings(words) or 
# integers(numbers). Because of this, they can be written both ways and evaluate
# in an identical fashion. As you can see the Boolean Logic above can run
# without errors so it has been coded correctly.

#________________________________________________________________________________________

#Question 3:
def fancy_pants(first_name, middle_name, last_name)
full_name = first_name + ' ' + middle_name + ' ' + last_name
full_name
end

puts fancy_pants("John", "Lindstrand", "Figueiredo")

#________________________________________________________________________________________

#Question 4:

def foobar(arg)
  if arg > 42
    puts "Danger!  Danger!"
  elsif arg == 42
    puts "Just right!"
  else
    puts "She needs more power, cap'n!"
  end
end

puts foobar(41)
puts foobar(42)
puts foobar(43)

# Answer:
# This method uses Boolean Logic that compares the argument that is an integer 
# to other integers and puts out different strings based on what the original 
# arg values is. If the arg number is OVER 42 then it will say "Danger! Danger!". 
# If arg is EQUAL to 42 then it puts "just right!". The last statement just says else, 
# which means that any other values that do not meet the first #two criteria it will 
# puts "She needs more power, cap'n!", which means the last statement will puts if the 
# arg is any integer UNDER 42.

#________________________________________________________________________________________

#Question 5:

array = ["ruby", "is", "the", "best", "programming", "language", "ever"]

puts array[3]
puts array[0]
puts array.length

#Answer:
#What value is stored at index 3? 
# Answer = "best"
#What is the index of the word "ruby?"
# Answer = 0
#What is the length of the array?
# Answer = 7

#________________________________________________________________________________________

#Question 6:

def new_cat(first, last)
	concat = first + last
	concat
end

puts new_cat("John", "Figueiredo")

#________________________________________________________________________________________

#Question 7:

def product(array)
	total = 1
	array.each{|x| total *= x}
	total
end

puts product([1, 2, 3, 4, 5, 6])

#________________________________________________________________________________________

#Question 8:

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

#________________________________________________________________________________________

#Question 9:

def fizzblam(number)
	x = 1
	while x <= number
		if x % 5 == 0 && x % 35 != 0
			puts "Fizz"
		elsif x % 7 == 0 && x % 35 != 0
			puts "Blam"
		elsif x % 35 == 0
			puts "FizzBlam"
		else
			puts x
		end
		x += 1
	end
end

fizzblam(1000)

#________________________________________________________________________________________

#Question 10: 

# 1. For each example, explain in a one or two plain-English sentences what 
# the given method does when passed an array of positive integers.

def method_1(array)
  array.each do |num|
    puts num*100
  end
end
# Answer: This method takes an array and iterates over it with a .each method
# and puts out each value multiplied by 100. 1 will become 100, 2 200, etc..

def method_2(array)
  foo = array.first
  array.each do |num|
    if num > foo
      foo = num
    end
  end
  return foo
end
# Answer: This simply finds the largest number in the array by setting foo equal to the 
# first value and then if a number was larger foo became that until foo couldn't go any 
# higher

def method_3(array)
  results = []
  array.each do |num|
    if num > 0
      results << num
    end
  end
  return results
end
# Answer: This method takes an array and iterates over itself only searching
# for numbers greater than zero. It then shovels those values to a new array
# called results and then returns that array

def method_4(array)
  results = []
  array.each do |num|
    if num % 2 == 0
      results << num
    end
  end
  return results
end
# Answer: This method takes an array and iterates over itself only searching for
# numbers that are divisible by 2. If a number in the array is divisible by 2
# it is shoveled into the results array and then that array is printed.
# This simply builds an array of all even numbers.


# 2. Choose one method (not the first!) and refactor it into something shorter. 
# Give the working code of the refactored method.

def method_3(array)
  results = []
  array.each do |num|
    if num > 0
      results << num
    end
  end
  return results
end

# YES! From 7 to 3 ;-)
def refactored(array)
  results = []
  array.each { |x| x <= 0 ? true : results << x}
  return results
end
print refactored([-1, 0, 1, -5, 2, 3])

#________________________________________________________________________________________

#Question 11:

 def print_value(hash, key)
   puts hash[key].inspect
end

hash = {:dog => 'woof', 'cat' => 'meow', 'duck' => 'quack'}

print_value(hash, :dog)			# => "woof"
print_value(hash, 'dog')		# => nil
print_value(hash, 'cat')		# => "meow"
print_value(hash, 'quack')	# => nil
print_value(hash, :duck)		# => nil

# Answer: What this method does is that it reads the hash at the selected key
# and then prints out the value associated with the key as a string. the key :dog
# is associated with the value "woof" and the key 'cat' is associated with the 
# value "meow". The others do not work and print out nil because none of them are 
# the correct keys. "dog" is a string and :dog is a symbol, 'quack' is a value 
# and not a key, and :duck is a symbol and 'duck' is a string which is why they
# do not work.

#________________________________________________________________________________________

#Question 12:

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
# prints the value on a new line in the terminal. In example 4 you can see that each 
# value is printed out on a separate line using puts, while in example 3 no values are 
# printed out and they are simply returned to the console. 

#________________________________________________________________________________________

#Question 13:

def hangman(string)
	alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
	my_answer = []
	answer = string.split('').to_a
	alphabet.shuffle!
	
	y = 6
	while y > 0
		guess = alphabet.last
		answer.each do |x|
			if guess == x
				my_answer << guess
			end
		end
		if answer.include?(guess)
		else
			 y -= 1
		end
		alphabet.pop
		p guess
	end
	p answer
	p my_answer
	if my_answer.count == answer.count
		puts "You win"
	else 
		puts "You lose"
	end
end

hangman("cool")

# Pseudocode Answer: 

# Create alphabet array with all individual letters as a string
# Create blank array called my_answer
# Given answer in method is split and turned into an array of individual characters
# Shuffle! alphabet to randomize each guess
# Create variable y = 6
# While y is greater than 0, y will count down from 6 to 0
# 	Each guess will be the last letter in the alphabet array
# 	answer.each that checks if letters in the array are equal to the guess. 
# 		If the guess equals a letter in the array 
#				then push that letter into the my_answer array
# 		If answer includes guess 
# 			return nothing 
# 		Else 
# 			y is subtracted by one.
# 		pop last letter in alphabet array so it can't be guessed again by computer.
# 		show guess on terminal
# end while loop

# p answer 
# p my_answer array
# if my_answer array is equal to answer array
# 	puts "You win" 
# else
# 	puts "You lose" 





