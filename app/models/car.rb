class Car
  @@all = []

  attr_reader :make, :model, :classification
  attr_accessor :owner, :mech

  def initialize(make, model, classification, owner, mech)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mech = mech
    Car.all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    Car.all.map{ |car| car.classification }
      .uniq
  end

  def self.find_mechanics(classification)
    Mechanic.all.select{ |mech| mech.specialty == classification } 
  end

end
