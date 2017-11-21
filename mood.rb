# Write a program that asks for your mood for the day, then returns the length of the string. Then return the string with 'meow' prepended to it.

puts "What kind of mood are you in today?"

mood = gets.chomp.downcase

puts mood.length

puts "meow #{mood}"
