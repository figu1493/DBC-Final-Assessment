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