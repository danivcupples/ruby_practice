# Create a Mad Libs program with at least 10 inputs and a minimum of one each of these: verb, plural noun, adjective, preposition, geographical feature, object, number.

puts "Please give me a verb in the present participle (-ing) form."

verb_1 = gets.chomp

puts "Please give me a plural noun."

noun_plural = gets.chomp

puts "Please give me an adjective."

adjective_1 = gets.chomp

puts "Please give me a singular noun."

noun_singular_1 = gets.chomp

puts "Please give me a preposition."

preposition = gets.chomp

puts "Please give me a geographical feature."

geo_feat = gets.chomp

puts "Please give me another singular noun."

noun_singular_2 = gets.chomp

puts "Please give me a number."

number = gets.chomp

puts "Please give me another adjective."

adjective_2 = gets.chomp

puts "Please give me another verb in the past participle (-ed) form."

verb_2 = gets.chomp

puts "Once a #{adjective_1} #{noun_singular_2} was #{verb_1} down the road. As it approached a #{geo_feat}, it saw #{number} #{noun_plural}. The now #{adjective_2} #{noun_singular_2} #{verb_2}. Then a #{noun_singular_1} came #{preposition} the sky and put an end to the whole thing."
