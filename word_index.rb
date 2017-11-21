# Write a program that asks for a sentence. Then ask for their favorite word in that sentence. Then tell them what index that word starts at. See the Ruby Docs page for String for a handy method to use.

puts "Give me a sentence."

sentence = gets.chomp.downcase

puts "What is your favorite word in that sentence?"

fav_word = gets.chomp.downcase

puts sentence.index fav_word
