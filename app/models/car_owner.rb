class CarOwner
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    CarOwner.all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select{ |car| car.owner == self }
  end

  def mechanics
    Car.all.select{ |car| car.owner == self }
      .map{ |car| car.mech }
      .uniq
  end

  def self.avg_num_cars
    CarOwner.all.map{ |owner| owner.cars.length.to_f }.sum / CarOwner.all.length
  end


end
