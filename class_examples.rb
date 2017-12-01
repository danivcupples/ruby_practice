# class Person
#   def initialize (name, age)
#     @name = name
#     @age = age
#   end
# end
#
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
