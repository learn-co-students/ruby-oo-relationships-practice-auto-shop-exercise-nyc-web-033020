class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all 
  end

  def cars 
    Car.all.select { |car| car.car_owner == self }
  end

  def mechanics
    cars.map { |car| car.mechanic }
  end
  
  def self.average_number_of_cars
    cars_owned = CarOwner.all.map { |owner| owner.cars.length }
    cars_owned.reduce { |acc, cur| acc + cur } / cars_owned.length.to_f
  end
end
