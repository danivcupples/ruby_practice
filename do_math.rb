# Write a program that takes two numbers from the user and shows the sum, difference, product and quotient of the two numbers.

puts "Give me a number."

first_num = gets.chomp.to_i

puts "Give me another number."

second_num = gets.chomp.to_i

quotient = 0

if first_num/second_num > 0
  quotient = first_num/second_num > 0
else
  quotient = second_num/first_num
end

puts "The sum of your numbers is #{first_num + second_num}. The difference of your numbers is #{(first_num - second_num).abs}. The product of your numbers is #{first_num * second_num}. The quotient of your numbers is #{quotient}."
