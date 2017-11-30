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

def build_quiz

  #user input for title of quiz
  puts "Please give me a title for your quiz."
    #store input from the user
    quiz[:title] = gets.chomp.downcase

  #user input for number of questions
  puts "Please give me a number of questions."
    #store input from user
    quiz[:num_questions] = gets.chomp.to_i

  #create questions array
  question_arr = []

  #create answers array
  answer_arr = []

  #number of questions times do loop
  quiz[:num_questions].times do
    #user input for each question
    puts "Please provide the question."
      #store input from user
      question_arr.push(gets.chomp.downcase)
      #user input for answers
      puts "Please provide the answer."
        #store input from user
        answer_arr.push(gets.chomp.downcase)

  end

  #assign into key: value pair in empty hash
  question_arr.each_with_index do |question, index|
    q_num = "q" + (index + 1).to_s
    quiz[q_num] = question
  end

  #assign into key: value pair in empty hash
  answer_arr.each_with_index do |question, index|
    a_num = "a" + (index + 1).to_s
    quiz[a_num] = question
  end

  puts quiz
end

#define method to take quiz
def take_quiz
  score = 0
  #loop through hash the number of times there are num_questions
  quiz[:num_questions].times do
    count = 1
    #ask question
    puts quiz[:q+"#{count.to_s}"]

    #store answer
    user_ans = gets.chomp.downcase

    #if answer == comensurate answer, add a point to score
    if user_ans == quiz[:a+"#{count.to_s}"]
      score += 1
      puts "You are correct! Your new score is #{score}!"
    #else do not adjust score & provide correct answer
    else
      puts "I'm sorry, the correct answer is #{quiz[:a+"#{count.to_s}"]}. Your score is still #{score}."
    end
    #adjust count
    count += 1

  end
  #at the end, give score
  puts score
end

#ask the user if they would like to start a new session
puts "Would you like to start a new session?"

#store answer
session = gets.chomp.downcase

#until no
until session == "no"
  #Ask the user if they would like to build a quiz or take a quiz.
  puts "Would you like to build or take a quiz?"
  action = gets.chomp.downcase
  #if build, call build_quiz
    if action == "build"
      puts build_quiz
    #else, call take_quiz
    else
      puts take_quiz
    end
end
