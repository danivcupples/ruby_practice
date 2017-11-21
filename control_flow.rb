puts "Please tell me your favorite number"

num = gets.chomp.to_i

unless num == 13
  puts "Phew! I was afraid you were going to say 13!"
else
  puts "Wait, the lucky 13 or the UNLUCKY 13??"
end
