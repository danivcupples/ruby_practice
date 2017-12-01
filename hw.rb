# 1. Write a program that asks for a score (an integer), and assigns a letter grade based on the score.
#
# Letter grades are assigned as follows:
# 100-90: A
#  89-80: B
#  79-70: C
#  69-60: D
# Less than 60: F
# More than 100: "Wrong score"

# puts "What is your score?"
#
# score = gets.chomp.to_i
#
# if score > 100
#   puts "Wrong score."
# else
#   case score
#   when 90..100
#     puts "A"
#   when 80..89
#     puts "B"
#   when 70..79
#     puts "C"
#   when 60..69
#     puts "D"
#   when 0..59
#     puts "F"
#   end
# end

###################################

# 2. Create a program that takes two numbers from the user then find out if the first is divisible by the second. If not divisible, let the user know what the remainder is.

# puts "Please give me two numbers."
#
# response = gets.chomp
# numbers = response.split(" ").sort
#
# numbers.each_with_index do |num, index|
#   numbers[index] = num.to_i
# end
#
# if (numbers.last % numbers.first) == 0
#   puts "#{numbers.last}/#{numbers.first} = #{numbers.last/numbers.first}."
# else
#   puts "These numbers are not divisible. The remainder is #{numbers.last%numbers.first}."
# end

# puts "Number please"
#
# num1 = gets.chomp.to_i
#
# puts "Number please"
#
# num2 = gets.chomp.to_i
#
# #check for bigger number
#
# if num1 < num2
#   #check for remainder
#   if num2 % num1 == 0
#     #divide num2 by num1
#     puts "The quotient is #{num2/num1}."
#   else
#     puts "The remainder is #{num2%num1}."
#   end
# else
#   if num1 % num2 == 0
#   #divide num1 by num2
#     puts "The quotient is #{num1/num2}."
#   else
#     puts "The remainder is #{num1%num2}"
#   end
# end

####################################

# 3. Create a program that takes a name (or any word, really), and spells it out, one letter at a time (horizontally). Then have the name/word spelled out in one line (vertically), but with commas between each letter (but not after the last letter).

#request a name
puts "Please give me a word or name."
#store response in a variable & split into an array
word = gets.chomp.split("")
#iterate over and puts on a single line
word.each do |letter|
  puts letter + "\n"
end
#rejoin
puts word.join(",")

####################################

# 4. Write a program that translates one English word into Pig Latin. Because the rules for Pig Latin can vary, I'll be specific:
#
# If the given word starts with a consonant, move only that consonant to end and then add "ay" to the end (e.g.: coffee -> offeecay, blogger -> loggerbay)
# If the given word starts with a vowel, add "way" to the end of the word (e.g., office -> officeway)

# puts "Please give me a word or a name."
#
# word = gets.chomp.downcase
#
# if word.match(/^[aeiou]/)
#   word = word + "way"
# else
#   word = word[1, word.length-1] + word[0] + "ay"
# end
#
# puts word

####################################

# 5. Create a Ruby program that finds how many prime numbers are between 1 and a number given by the user. Hint: look through the Ruby Docs on the Prime class, and note that sometimes you must import, or require, certain Ruby libraries.

# puts "Please give me a number greater than 1."
#
# num = gets.chomp.to_i
# count = 2
# primes = []
#
# while count < num + 1
#   if (count % 2 != 0) && (count % 3 != 0)
#     primes.push(count)
#     count += 1
#   else
#     count += 1
#   end
# end
#
# puts "There are " + primes.length.to_s + " prime numbers between 1 & #{num}."

####################################

# 6. Write a Rock, Paper, Scissors game where a user can play against the computer.
#
# The user should enter rock, paper, or scissors (remember to account for differences in capitalization!), and the computer will choose a random value.
# After each turn display the score (user wins vs. computer wins).
# Whichever player reaches five wins first is the winner!

# puts "Please choose rock, paper, or scissors."
# user_play = gets.chomp.downcase
#
# options = ["rock", "paper", "scissors"]
# comp_play = options[rand(0..2)]
#
# score = {you: 0, comp: 0}
#
# while score[:you] < 5 && score[:comp] < 5
#
#   if user_play == comp_play
#     puts score
#     puts "Tie! Go again!"
#   elsif user_play == "rock" && comp_play == "scissors"
#     score[:you] = score[:you] + 1
#     puts score
#   elsif user_play == "paper" && comp_play == "scissors"
#     score[:comp] = score[:comp] + 1
#     puts score
#   elsif user_play == "rock" && comp_play == "paper"
#     score[:comp] = score[:comp] + 1
#     puts score
#   elsif user_play == "paper" && comp_play == "rock"
#     score[:you] = score[:you] + 1
#     puts score
#   elsif user_play == "scissors" && comp_play == "paper"
#     score[:comp] = score[:comp] + 1
#     puts score
#   elsif user_play == "scissors" && comp_play == "rock"
#     score[:you] = score[:you] + 1
#     puts score
#   end
#
#   if score[:you] == 5
#     puts "Congrats! You win!"
#   elsif score[:comp] == 5
#     puts "Sorry! Computer wins!"
#     else
#       puts "Please choose rock, paper, or scissors."
#       user_play = gets.chomp.downcase
#
#       comp_play = options[rand(0..2)]
#   end
#
# end

####################################

# 7.  Fizzbuzz: Write a program that prints the numbers from 1 to 100. But for multiples of three (3) print "Fizz" instead of the number, and for the multiples of five (5) print "Buzz". For multiples of both three (3) and five (5), print "FizzBuzz".

# count = 1
#
# 100.times do
#   if count % 3 == 0 && count % 5 == 0
#     puts "FizzBuzz"
#   elsif count % 3 == 0
#     puts "Fizz"
#   elsif count % 5 == 0
#     puts "Buzz"
#   else
#     puts count
#   end
#
#   count += 1
#
# end

####################################

# 8. Create an array of test scores (anywhere from 0 to 100; sorry, no extra credit was given).
#
#     Now I want a couple things:
#
# Print out the scores in ascending order.
# Find the average of those test scores and print it out.

# test_scores = [91, 99, 84, 78, 88, 65, 59, 71, 55, 67, 93, 85]
#
# puts test_scores.sort
#
# sum = 0
#
# test_scores.each do |score|
#   sum += score
# end
#
# puts (sum/test_scores.length.to_f).round(2)

####################################

# 9. Create a program with a hash of countries & capitals - don't worry I'll give it to you:
#
#
#Ask the user for the capital of each country, and tell them if they are Correct or Wrong. Also, keep score and give their score at the end of the quiz. Maybe have some smart-alecky comments about their score (see example below).

# cos_n_caps = {"USA" => "Washington, DC", "Canada"=>"Ottawa", "United Kingdom"=>"London", "France"=>"Paris", "Germany"=>"Berlin", "Egypt"=>"Cairo", "Ghana"=>"Accra", "Kenya"=>"Nairobi", "Somalia"=>"Mogadishu", "Sudan"=>"Khartoum", "Tunisia"=>"Tunis", "Japan"=>"Tokyo", "China"=>"Beijing", "Thailand"=>"Bangkok", "India"=>"New Delhi", "Philippines"=>"Manila", "Australia"=>"Canberra", "Kyrgyzstan"=>"Bishkek"}
#
# score = 0
#
# cos_n_caps.each do |country, capital|
#   puts "What is the capital of " + country +"?"
#   answer = gets.chomp.downcase
#   if answer == capital.downcase
#     puts "Correct"
#     score += 1
#   else
#     puts "Wrong"
#   end
# end
#
# puts score
