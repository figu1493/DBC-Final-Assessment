	alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
	consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
	vowels = ['a', 'e', 'i', 'o', 'u']

	guess = ['e', 'i', 'o', 'u', 'a']
	answer = ['c', 'a', 't']
	match = []
	
	guess.each do |x|
		answer.include?(x)
		if true
			match << x
		else false
		end
	end

	print answer
	print match