require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

liz = CarOwner.new("Liz")
greg = CarOwner.new("Greg")
kylie = CarOwner.new("Kylie")
matt = CarOwner.new("Matt")

kenji = Mechanic.new("Kenji", "cars")
greggory = Mechanic.new("Greggory","orange cars")
tricia = Mechanic.new("Tricia", "Celeberty Gossip")


car1 = Car.new("beatle", 1995, "cute", greggory, liz )
car2 = Car.new("something", 44, "not sure", greggory, kylie)
car3 = Car.new("ok", "whatever", Time.now, tricia, matt)
car4 = Car.new("ugh", "idk", 5, kenji, liz )
car5 = Car.new("eeee", 8, 9, kenji, greg)
car6 = Car.new("something", "ok", Time.now, tricia, kylie)

binding.pry
