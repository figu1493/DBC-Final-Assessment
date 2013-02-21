def product(array)
	total = 1
	array.each{|x| total *= x}
	total
end

puts product([1, 2, 3, 4, 5, 6])