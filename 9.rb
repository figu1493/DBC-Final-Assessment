#Write a method called fizzblam that prints the numbers from 1 to 1000. 
#But for multiples of 5 print "Fizz" instead of the number and for the 
#multiples of 7 print "Blam". For numbers which are multiples of both 5 and 7 
#print "FizzBlam."

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