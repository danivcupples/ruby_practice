#* You are a car dealer - create a hash of vehicles: The model is the Key, the make is the Value (Keys must unique, Values can repeat). Ask the customer what car (model) they are looking for, use the Hash to determine if you have that vehicle, and what make it is (e.g., "Oh, you're looking for a Civic? Our Honda selection is right over here...").

cars = {Civic: "Honda", Camry: "Toyota", Outback: "Subaru", Accord: "Honda", Elantra: "Hyundai", Wrangler: "Jeep"}

cars.each do |model, make|
  puts "Oh, you're looking for a #{model}? Our #{make} selection is right over here..."
end
