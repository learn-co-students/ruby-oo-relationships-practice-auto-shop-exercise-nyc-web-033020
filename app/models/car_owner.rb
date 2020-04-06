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
    Car.all.select { |car| car.owner == self }
  end
  
  def mechanics
    cars.map { |car| car.mechanic }
  end
  
  def self.average_number_of_cars
    Car.all.count / all.count
  end
end
