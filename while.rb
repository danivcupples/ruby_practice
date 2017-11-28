# num = 1
#
# while num < 11
#   puts num
#   num += 1
# end

# puts "What is your name?"
#
# names = gets.chomp.downcase.capitalize
#
# while names != "Pam"
#   puts "What is your name?"
#   names = gets.chomp.downcase.capitalize
# end
#
# puts "It's nice to meet you all!"

num = rand(1..10)

while num != 7
  puts num
  num = rand(1..10)
end

puts "It's 7!"
