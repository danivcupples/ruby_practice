# num = 1
#
# until num > 10
#   puts num
#   num += 1
# end

# puts "Give me a number between 1 & 10."
#
# number = gets.chomp.to_i
#
# until number > 10
#   puts number * 2
#   number += 1
# end

puts "Can we please go to Mt. Splashmore???????"

answer = gets.chomp.upcase

until answer == "YES" || answer == "YEAH" || answer == "YEP" || answer == "SURE"
  puts "Can we please go to Mt. Splashmore???????"
  answer = gets.chomp.upcase
end

puts "Yayyyyyyy!!!!"
