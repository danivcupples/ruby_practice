#Ask the user for their number grade. If the grade is at least 90-100, tell them they got an A; 80-89, B; 70-79, C; 60-69, D. If it's lower than 60, tell them they have to take the class again.

puts "What is your grade in this class?"

grade = gets.chomp.to_i

# if grade > 59
#   puts "Congrats! You're passing!"
# else
#   puts "You'll have to repeat the class if you don't get up to a 60."
# end

case grade
  when 0..59
    then puts "Summer school!"
  when 60..69
    then puts "You have a D."
  when 70..79
    then puts "You have a C."
  when 80..89
    then puts "You have a B."
  else
    puts "Congrats! You have an A!"
end
