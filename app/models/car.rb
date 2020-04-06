class Car

  attr_reader :make, :model, :classification, :mechanic, :owner 
  @@all = [ ]
  @@classifications = [ ]

  def initialize(make, model, classification, mechanic, owner)
    @make = make
    @model = model
    @mechanic  = mechanic
    @owner = owner
    @classification = classification
    Car.all << self 
    Car.classifications << self.classification
  end

  def self.all
    @@all 
  end 

  def self.classifications #works 
    @@classifications
  end 

  def self.find_mechanics(classification) #works 
    Mechanic.all.find do |me|
      me.specialty == classification
    end 
  end 


end

