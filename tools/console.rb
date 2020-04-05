require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

luis = CarOwner.new("luis")
owner_2 = CarOwner.new("2")

bob = Mechanic.new("bob", "headlight fluid")
mech_2 = Mechanic.new("2", "explosions")

race_car = Car.new("Ferrari", "LaFerrari", "race car", luis, bob)
mini_van = Car.new("Honda", "mini van", "van", luis, mech_2)

formula_1 = Car.new("Ferrari", "F20007", "formula 1", owner_2, bob)

binding.pry
