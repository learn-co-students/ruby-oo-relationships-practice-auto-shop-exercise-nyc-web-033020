class Mechanic

  attr_reader :name, :specialty
  @@all = []
  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    Mechanic.all << self
  end

  def self.all 
    @@all 
  end

  def cars
    Car.all.select{|cars| cars.mechanic == self}
  end

  def car_owners
    cars.map {|car| car.car_owner}
  end

  def car_owners_name
    car_owners.map {|owners| owners.name}
  end

end
