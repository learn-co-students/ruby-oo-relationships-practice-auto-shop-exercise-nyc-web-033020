class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic
  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    Car.all << self
  end

  def self.all
    @@all 
  end 

  def self.classification
    Car.all.map {|cars| cars.classification}
  end

  def self.find_mechanics(classification)
    Mechanic.all.select {|mechanic| mechanic.specialty == classification}
  end
end
