class Car
  attr_reader :name, :classification, :car_owner, :mechanic
  @@all = []
  def initialize (name, classification, car_owner, mechanic)
    @name = name
    @classification =classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end
  def self.all
    @@all
  end
  def self.car_classifications
    @@all.map {|key| key.classification}.uniq
  end
  def self.find_mechanics(classification)
    answer = nil
    @@all.find do|key| 
      if key.mechanic.specialization == classification
        answer = key.mechanic
      end
    end
    answer
  end
  
end
