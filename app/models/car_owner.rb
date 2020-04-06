class CarOwner
  attr_reader :name

  @@all = []
  def initialize (name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def cars
    Car.all.select {|key| key.car_owner == self}
  end
  def mechanics
    self.cars.map {|key| key.mechanic}
  end
  def self.average_number_of_cars
    total_cars = Car.all.count
    total_owner = @@all.count * 1.0
    total_cars / total_owner
  end
end
