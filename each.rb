# arr = ["Honda", "Toyota", "Subaru"]

# arr.each do |car|
#   puts "I drive a #{car}."
# end
#
# fam = ["Dani", "Wendy", "Houston"]
#
# fam.each_with_index do |peep, index|
#   puts "#{peep} is number #{index+1}"
# end

# animal = ["cat", "dog", "lion", "tiger", "bear"]
#
# puts "What's your favorite animal?"
#
# fav = gets.chomp.downcase
#
# if animal.include?(fav)
#   animal.each do |critter|
#     if critter == fav
#       puts "I love #{critter}s!!"
#     else
#       puts "No, I don't really care for #{critter}s."
#     end
#   end
# else
#   animal.push(fav)
#   animal.each do |critter|
#     if critter == fav
#       puts "I love #{critter}s!!"
#     else
#       puts "No, I don't really care for #{critter}s."
#     end
#   end
# end

# state1 = {"State" => "North Carolina", "Capital" => "Raleigh", "Population" => "a lot", "State Bird" => "Cardinal"}
#
# state1.each do |key, value|
#   puts "#{key}: #{value}"
# end

#profile = {Name: "Dani", Age: 33, Hometown: "Charlotte, NC", Fav_Food: "chocolate"}

# profile2 = {}
#
# puts "Please tell us about yourself!"
#
# puts "What is your name?"
#   profile2[:Name] = gets.chomp.downcase.capitalize
#
# puts "How old are you?"
#   profile2[:Age] = gets.chomp.to_i
#
# puts "What city did you grow up in?"
#   profile2[:Hometown] = gets.chomp.downcase.capitalize
#
# puts "What is your favorite food?"
#   profile2[:Fav_Food] = gets.chomp.downcase
#
# puts "What is your gender?"
#   profile2[:Gender] = gets.chomp.downcase
#
# pronoun = ""
# verb = "is"
#
# if profile2[:Gender] == "male"
#   pronoun = "He"
# elsif profile2[:Gender] == "female"
#   pronoun = "She"
# else
#   pronoun = "They"
#   verb = "are"
# end
#
#
# profile2.each do |characteristic, answer|
#   case characteristic
#
#   when :Name
#     puts "This is #{answer}."
#   when :Age
#     puts "#{pronoun} #{verb} #{answer} years old."
#   when :Hometown
#     puts "#{pronoun} #{verb} from #{answer}."
#   when :Fav_Food
#     puts "#{pronoun} likes #{answer}."
#
#   end
# end

# puts "Please give me 5 numbers, separated by spaces only."
#
# numbers = gets.chomp
#
# num_arr = numbers.split
#
# num_arr.each_with_index do |num, index|
#   num_arr[index] = num.to_i
# end
#
# puts num_arr

numbers = []

5.times do
  puts "Please give me a number."
  num = gets.chomp.to_i
  numbers.push(num)
end

sum = 0
product = 1

numbers.each do |num|
  sum += num
  product *= num
end

puts "The sum is #{sum}."
puts "The product is #{product}."
puts "The smallest number is #{numbers.sort.first}."
puts "The largest number is #{numbers.sort.last}."
