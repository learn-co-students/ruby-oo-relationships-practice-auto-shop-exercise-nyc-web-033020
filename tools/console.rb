require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("Edgar")
co2 = CarOwner.new("Lei")

m1 = Mechanic.new("Mech1", "antique")
m2 = Mechanic.new("Mech2", "exotic")
m3 = Mechanic.new("Mech3", "clunker")



car1 = Car.new("Lambo", "S-Class", "exotic", co1, m2)
car2 = Car.new("Ford", "GT", "antique", co1, m1)
car3 = Car.new("Hummer", "H2", "clunker", co2, m3)
car4 = Car.new("Audi", "r6", "exotic", co1, m2)
car5 = Car.new("BMW", "i8", "exotic", co2, m2)
car6 = Car.new("Tesla", "Rs", "antique", co2, m1)




binding.pry
' '
