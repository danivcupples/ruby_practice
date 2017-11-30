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


#define menu method
def menu
  puts "What would you like to do?"
  puts "1. Build a quiz."
  puts "2. Take a quiz."
  puts "3. Quit program"

  choice = gets.chomp.to_i

  case choice
  when 1
    system "clear"
    build_quiz
  when 2
    system "clear"
    choose_quiz
  when 3
    puts "Thank you and goodbye!"
  else
    system "clear"
    puts "Try again"
  end
end

def build_quiz
  #user input for title of quiz
  puts "Title your quiz."
  title = gets.chomp

  #user input for number of questions
  puts "How many questions should be in your quiz?"
  num = gets.chomp.to_i

    questions_and_answers = {}

    num.times do
      puts "Enter a yes or no question."
      q = gets.chomp
      puts "What is the answer? [Y/N]?"
      a = gets.chomp.downcase
      questions_and_answers[q] = a
    end

    @quizzes[title] = questions_and_answers
    system "clear"
    puts "Quiz built!"

    menu
end

def choose_quiz
  if @quizzes.length == 0
    puts "No quizzes available. Please build a quiz first."
    build_quiz
  else
    puts "Choose a quiz."
    puts "--------------"

    @quizzes.keys.each_with_index do |title, index|
      puts "#{index+1}. #{title}"
    end

    choice = gets.chomp.to_i

    system "clear"
    take_quiz(@quizzes[choice-1])
  end
end

#define method to take quiz
def take_quiz(title)
  score = 0

  puts title.upcase
  puts "-----------"

  @quizzes[title].each do |question, answer|
    puts question
    user_ans = gets.chomp.downcase

    if user_answer == "y" || user_ans == "n"
      if user_ans == answer
        score += 1
      end
    else
        puts "Try again: Y or N"
        redo
    end
  end

  puts "You got a score of #{score} out of #{@quizzes[title].length}"

end

menu
