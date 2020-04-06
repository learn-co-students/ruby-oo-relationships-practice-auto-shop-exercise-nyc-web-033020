require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jo = CarOwner.new("jordan")
lance = CarOwner.new("Lance")
flo = CarOwner.new("Florence")
livia = CarOwner.new("Livia")
ig = CarOwner.new("Ignace")

pe = Mechanic.new("peugeot", "3 portes")
re = Mechanic.new("reunault", "5 portes")
wol = Mechanic.new("Wolswagen", "coupes")
ford = Mechanic.new("Ford", "big car")
merco = Mechanic.new("mercedes", "luxe car")

clio = Car.new("clio", "3 portes", lance, pe)
suba = Car.new("subaru", "coupes", flo, wol)
benz = Car.new("Benz", "3 portes", jo, merco)
suv = Car.new("4 x 4", "big car", livia, ford)
r207 = Car.new("renault 207", "5 portes", ig, re)
rr = Car.new("Roll Royce", "3 portes", ig, merco)


binding.pry
p "yeerr"