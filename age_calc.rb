# Write a program that accepts your age. Convert your age to how old you are in seconds. Convert your age to how old you would be on the 8 different planets (hint: search planet rotation conversion rates). Output what your age in years would be on each planet.

puts "What is your age in years?"

age = gets.chomp.to_i

age_sec = (age * 365.2422 * 24 * 60 * 60).round

age_mercury = (age * 365.2422 / 88).round

age_venus = (age * 365.2422 / 225).round

age_mars = (age * 365.2422 / 687).round

age_jupiter = (age * 365.2422 / 4300).round(2)

age_saturn  = (age * 365.2422 / 10832).round(2)

age_uranus  = (age * 365.2422 / 30688.5).round(2)

age_neptune  = (age * 365.2422 / 60200).round(2)

puts "You are #{age_sec} seconds old!"

puts "On Mercury, you would be approximately #{age_mercury} years old."

puts "On Venus, you would be approximately #{age_venus} years old."

puts "On Mars, you would be approximately #{age_mars} years old."

puts "On Jupiter, you would be approximately #{age_jupiter} years old."

puts "On Saturn, you would be approximately #{age_saturn} years old."

puts "On Uranus, you would be approximately #{age_uranus} years old."

puts "On Neptune, you would be approximately #{age_neptune} years old."
