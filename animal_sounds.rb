#Dog says Cat says: ask the user to enter dog or cat, then puts out the animal's sound.

puts "What is your favorite animal?"

animal = gets.chomp.downcase

case animal
  when "dog" then puts "woof!"
  when "cat" then puts "meow!"
  when "horse" then puts "neigh!"
  when "owl" then puts "hoo hoo!"
  else
    puts "grr?"  
end
