require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

michelle = CarOwner.new('Michelle')
sarah = CarOwner.new('Sarah')
jocelyn = CarOwner.new('Jocelyn')
raquel = CarOwner.new('Raquel')
rivkah = CarOwner.new('Rivkah')

enzo = Mechanic.new('Enzo', 'supercar')
ferdinand = Mechanic.new('Ferdinand', 'supercar')
henry = Mechanic.new('Henry', 'beater')
tony = Mechanic.new('Tony', 'classic')

f40 = Car.new('Ferrari', 'F40', 'supercar', michelle, enzo)
cgt = Car.new('Porsche', 'Carrera GT', 'supercar', michelle, ferdinand)
widowmaker = Car.new('Porsche', '930 Turbo', 'classic', michelle, ferdinand)
gt2rs = Car.new('Porsche', '911 GT2RS (991)', 'supercar', jocelyn, ferdinand)
e30 = Car.new('BMW', 'M3 (E30)', 'classic', sarah, tony)
e24 = Car.new('BMW', 'M6, (E24)', 'classic', rivkah, tony)
miata = Car.new('Mazda', 'ND Miata', 'beater', raquel, henry)
focus = Car.new('Ford', 'Focus ZX-3', 'beater', michelle, henry)
civic = Car.new('Honda', 'Civic', 'beater', jocelyn, henry)


binding.pry
