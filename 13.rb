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

