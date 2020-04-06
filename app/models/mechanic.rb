class Mechanic

  attr_reader :name, :specialty
  @@all = [ ]

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  Mechanic.all << self 
end

def self.all
  @@all
end 

def cars #works 
  Car.all.select do |car|
    car.mechanic == self 
  end 
end 

def car_owners #works 
  Car.all.select do |car|
    car.mechanic == self 
  end.map{ |car| car.owner }
end 

def car_owners_names #works 
  Car.all.select do |car|
    car.mechanic == self 
  end.map{ |car| car.owner.name }
end 

end




