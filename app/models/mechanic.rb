class Mechanic
  attr_reader :name, :specialization
  @@all = []
  def initialize(name, specialization)
    @name = name
    @specialization = specialization
    @@all << self
  end
  def self.all
    @@all
  end
  def cars
    Car.all.select {|key| key.mechanic == self}
  end
  def car_owners
    self.cars.map {|key| key.car_owner}
  end
  def car_owner_names
    self.car_owners.map {|key| key.name}
  end

end
