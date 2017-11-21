puts "How many people does it take to change a lightbulb?"

people = gets.chomp.to_i

if people > 5 && people < 8
  puts "I knew it!"
else
  puts "That's just crazy talk."
end

# if people == 4 || people == 2
#   puts "A nice even number."
# else
#   puts "That's never going to work."
# end
