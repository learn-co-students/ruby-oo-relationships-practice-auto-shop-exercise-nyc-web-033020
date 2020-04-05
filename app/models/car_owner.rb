class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    CarOwner.all << self
  end

  def self.all 
    @@all
  end

  def cars
    Car.all.select {|cars| cars.car_owner == self}
  end

  def mechanics
    cars.map {|car| car.mechanic}.uniq
  end

  def self.average_number_of_cars
    total_cars = Car.all.count
    total_car_owners = CarOwner.all.count.to_f
    total_cars / total_car_owners
  end

end
