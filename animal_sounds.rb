#Dog says Cat says: ask the user to enter dog or cat, then puts out the animal's sound.

puts "Please choose 'dog' or 'cat'!"

animal = gets.chomp.downcase

if animal == "dog"
  puts "Woof!"
elsif animal == "cat"
  puts "Meow!"
else
  puts "You're not very good at following directions."
end
