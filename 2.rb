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

