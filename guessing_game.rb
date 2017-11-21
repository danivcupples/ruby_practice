puts "Please choose a number between 1 & 100."

guess = gets.chomp.to_i

comp_number = rand(1..100)

if guess == comp_number
  puts "Wow! You must be a mind reader!"
elsif guess >= comp_number - 5 && guess <= comp_number + 5
  puts "Ooh! So close! The number is #{comp_number}."
elsif guess < comp_number
  puts "Womp womp, too low. The number is #{comp_number}."
else
  puts "Overachiever much? The number is only #{comp_number}."
end
