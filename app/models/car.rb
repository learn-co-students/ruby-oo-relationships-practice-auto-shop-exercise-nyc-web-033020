class Car
  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = []
  
  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    Car.all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    all.map { |car| car.classification }
  end

  def self.find_mechanics(classification)
    found_cars = all.select { |car| car.classification == classification }
    found_cars.map { |car| car.mechanic }
  end
end
