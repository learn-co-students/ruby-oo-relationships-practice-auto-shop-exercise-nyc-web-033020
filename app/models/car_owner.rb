class CarOwner

  attr_reader :name
  @@all = [ ]

  def initialize(name)
    @name = name
    CarOwner.all << self 
  end

  def self.all
    @@all
  end 

  def Cars #works 
    Car.all.select do |car|
     car.owner == self 
    end
  end 

  def Mechanics #works 
    Car.all.select do |car|
     car.owner == self 
    end.map{ |car| car.mechanic }
  end 

  def self.average_number_of_cars #works 
    #Get the average amount of cars owned for all owners
    (Car.all.count / CarOwner.all.count).to_f
  end 

end


