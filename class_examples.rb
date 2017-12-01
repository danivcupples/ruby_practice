# class Person
#   attr_accessor :name, :age
#
#   def initialize (name, age)
#     @name = name
#     @age = age
#   end
# end
#
# all_the_people = []
#
# completion = ""
#
# puts "Enter personal data. Type 'done' when finished."
#
# while completion != "done"
#   print "Name: "
#   name = gets.chomp.downcase
#   if name == "done"
#     completion = "done"
#     break
#   end
#   print "Age: "
#   age = gets.chomp
#   profile = Person.new(name, age)
#   all_the_people.push(profile)
#   puts "Profile saved!"
# end
#
# puts "Personnel entry complete"

# new_profile = Person.new("Gayle", 33)
#
# all_the_people.push(new_profile)
#
# new_profile = Person.new("Frank", 59)
#
# all_the_people.push(new_profile)
# my_profile = Person.new("Aaron", 34)

# class User
#   def initialize (email, password, username, name)
#     @email = email
#     @username = username
#     @password = password
#     @name = name
#   end
# end

class Pets
  attr_accessor :name, :age, :species

  def initialize(name, age, species)
    @name = name
    @age = age
    @species = species
  end

  def sound
    case @species
    when "dog" then puts "woof"
    when "cat" then puts "meow"
    end
  end

end

my_pets = []

completion = false

puts "Tell us about your pets. Type 'done' when finished."

while completion == false
  print "Name: "
  name = gets.chomp
  if name == "done"
    completion = true
    break
  end
  print "Age: "
  age = gets.chomp
  print "Species: "
  species = gets.chomp
  pet = Pets.new(name, age, species)

  my_pets.push(pet)
  puts "Pet saved!"
end

puts "Thanks for telling us about your pets!"
puts my_pets

# class Products
#
#   attr_accessor :description, :type, :price, :size, :brand, :quantity
#
#   def initialize(description, type, price, size, brand, quantity)
#     @description = description
#     @type = type
#     @price = price
#     @size = size
#     @brand = brand
#     @quantity = quantity
#   end
#
#   def sold(amount)
#     @quantity -= amount
#   end
#
#   def restock(amount)
#     @quantity += amount
#   end
#
#   # def type
#   #   @type
#   # end
#   #
#   # def price
#   #   @price
#   # end
# end
#
# my_product = Products.new(stuff and things)

class Vehicle
  attr_accessor :make, :model, :year, :color

  def initialize(make, model, year, color, quantity)
    @make = make
    @model = model
    @year = year
    @color = color
    @quantity = quantity
  end

  def sell(car)
    @quantity -= car
  end

  def inventory(car)
    @quantity += car
  end

end
