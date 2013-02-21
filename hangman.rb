puts "So you want to play hangman?"

hangman_library = ["thee", "her", "cat", "man", "was", "everything", "beautiful", "hopeful", "gorgeous", "magnificent"]
answer = hangman_library.shuffle!.first.split('').to_a
my_answer = []

p answer
puts "Your word had #{answer.length} letters."
puts "What is your first guess?"

x = 5
while x > 0
guess = gets.chomp
	if my_answer.count == answer.count
		puts "You win!"
		break
	elsif answer.include?(guess)
		puts "That is correct, Guess again"
		my_answer << guess
	elsif answer.include?(guess) == false
		puts "Wrong you have #{x} guesses left"
		x -= 1
	end
	p my_answer
end

if x == 0
	puts "You lose try again"
else
end

# this does not match multiple letters
# this does not 
