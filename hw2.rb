#1. Create a program that will take two numbers and then gives the user a choice of what kind of arithmetic they'd like done to the two numbers. Include at least: add, subtract, multiply, and divide.

# #define methods listed above
# def add(num1, num2)
#   solution = num1 + num2
# end
#
# def multiply(num1, num2)
#   solution = num1 * num2
# end
#
# def subtract(num1, num2)
#   solution = (num1 - num2).abs
# end
#
# def divide(num1, num2)
#   arr = [num1, num2]
#   arr = arr.sort
#   solution = arr[1]/arr[0]
# end
#
# #ask the user to enter two numbers
# puts "Please give me a number."
# #create an array of those two numbers or save as variables
# num1 = gets.chomp.to_i
#
# puts "Please give me another number."
# num2 = gets.chomp.to_i
# #ask the user which method to use
# puts "Would you like to add, multiply, subtract, or divide?"
# method_choice = gets.chomp.downcase
#
# solution = 0
#
# #conditional to call appropriate method with two numbers.
# if method_choice == "add"
#   puts add(num1,num2)
# elsif method_choice == "subtract"
#   puts subtract(num1,num2)
# elsif method_choice == "multiply"
#   puts multiply(num1,num2)
# else
#   puts divide(num1,num2)
# end

############################

#2. Build-a-Quiz: Build a quiz program that gets a few inputs from the user, including: title of quiz, number of questions, questions (yes or no), answers. Then let the user either build more quizzes or take a quiz. When taking a quiz, keep score!

#create an empty hash
quiz = {}

#user input for title of quiz
puts "Please give me a title for your quiz."
  #store input from the user
  quiz[title] = gets.chomp.downcase

#user input for number of questions
puts "Please give me a number of questions."
  #store input from user
  quiz[num_questions] = gets.chomp.to_i

#number of questions times do loop
quiz[:num_questions].times do
  #user input for each question
  puts "Please provide the question."
    #store input from user
    
    #user input for answers
      #store input from user

  #assign into key: value pair in empty hash

end
