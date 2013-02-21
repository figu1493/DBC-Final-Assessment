def hangman(string)
	alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
	#consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
	#vowels = ['a', 'e', 'i', 'o', 'u']
	match = []
	guesses = []
	#con = consonants.shuffle!
	#vow = vowels. shuffle!
	answer = string.split('').to_a
	alphabet.shuffle!
	
	x = 0
	while x < 6
		answer.each do |x|
		guess = alphabet.last
		if x.include?(guess) == true
			match << guess
			alphabet.pop
		else x.include?(guess) == false
			alphabet.pop
			guesses << guess
			x += 1
		end
	end
	print match
	print guesses
	
	if match.count == answer.count
		puts "You win"
	else
		puts "You Lose"
	end
end

hangman("cat")

