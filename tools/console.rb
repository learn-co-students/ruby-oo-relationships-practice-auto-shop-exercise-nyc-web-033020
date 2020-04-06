require_relative '../config/environment.rb'

carOwner1 = CarOwner.new("Lisa")
carOwner2 = CarOwner.new("Rita")
carOwner3 = CarOwner.new("Sarah")

mechanic1 = Mechanic.new("Sasha", "Engine")
mechanic2 = Mechanic.new("Alex", "AC")
mechanic3 = Mechanic.new("Max", "Lighting")

car1 = Car.new("Toyoda", "Prius", "Sedan", carOwner1, mechanic1)
car2 = Car.new("Honda", "Fit", "Sport", carOwner2, mechanic2)
car3 = Car.new("Nissan", "LEAF", "SV", carOwner3, mechanic3)
car4 = Car.new("Ford", "FordCar", "Sedan", carOwner3, mechanic2)
car5 = Car.new("Suzuki", "SuzukiCar", "SV", carOwner2, mechanic1)
car6 = Car.new("Mazda", "MazdaCar", "Sport", carOwner1, mechanic2)
car7 = Car.new("Lincoln", "LincolnCar", "Van", carOwner1, mechanic3)


def reload
  load 'config/environment.rb'
end

binding.pry
