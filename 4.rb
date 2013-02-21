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