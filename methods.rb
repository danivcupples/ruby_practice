#create a method that takes a string argument and outputs the string in reverse. give the method a name that takes a string parameter

# def reverser(str)
#   str_arr = []
#
#   str.each_char do |x|
#     str_arr.unshift(x)
#   end
#
#   return str_arr.join("")
# end
#
# puts "Give me a string to reverse."
# str = gets.chomp
#
# puts reverser(str)

###########################

#create a method that converts an array into a hash, where your indices become your keys

# def array_to_hash(arr)
#
#   empty_hash = {}
#
#   arr.each_with_index do |item, index|
#     empty_hash[index] = item
#   end
#
#   puts empty_hash
#
# end
#
# my_arr = ["wendy", "grace", "cupples"]
#
# array_to_hash(my_arr)

###########################

#In Ruby 6 / 4 == 1. But what if we want the remainder also?
# Write a program that asks for two (2) Integers, divides the first by the second and returns the result including the remainder.

# If either of the numbers is not an Integer, then don't accept the number and ask again.

# Do not accept zero (0) as a number.

# method to see if input is not a whole number, if there is a period/decimal point, we can assume they meant to enter a float.
def float_check(num)
  if num.include?(".")
    return true
  else
    return false
  end
end

# method to see if input is zero. num will be an integer by this point.
def zero_check(num)
  if num == 0
    return true
  else
    return false
  end
end

#method to get a number, use out float check and zero check methods
def take_number

  puts "Give me a number"
  num = gets.chomp

  if float_check(num)
    puts "That's a float, we need an integer"
    take_number
  else
    #gotta convert to Integer before zero-checking!
    num = num.to_i
    if zero_check(num)
      puts "Please provide a non-zero number."
      take_number
    else
      return num
    end
  end
end

#create an empty array

arr = []

#two times use the take_number method and push to an array
2.times do
  num = take_number
  arr.push(num)
end

#sort the array
arr.sort!

#conditional to check if the numbers are divisible
if arr[1]%arr[0].abs == 0
  puts "#{arr[1]}/#{arr[0]} = #{arr[1]/arr[0]}"
else
  puts "#{arr[1]}/#{arr[0]} = #{arr[1]/arr[0]} with a remainder of #{arr[1]%arr[0]}"
end
