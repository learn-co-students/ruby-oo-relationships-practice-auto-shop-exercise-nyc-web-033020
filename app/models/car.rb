class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic
  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    @@all.map { |car| car.classification }
  end

  def self.find_mechanics(classification)
    cars = @@all.select { |car| car.classification == classification }
    cars.map { |car| car.mechanic }
  end
end
