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

