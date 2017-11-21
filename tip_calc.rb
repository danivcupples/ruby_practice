# Write a program that asks for the cost of your dinner at a restaurant. The program will return back to you a tip of 18% of your meal cost. Make sure the tip is always returned with two decimal places.

puts "How much did your dinner cost?"

dinner = gets.chomp.to_f

tip = (dinner * 0.18).round(2)

total = (dinner + tip).round(2)

puts "A tip of 18% is $#{tip}. Your total payment should be $#{total}."
