class Owner
  # code goes here
  
  attr_accessor :name
  attr_reader :species
  
  @@all = []
  @@count = []
  
  def initialize(name)
    @@all << self
    @@count << self
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    @@count.count
  end
  
  def self.reset_all
    @@count.clear
  end
  
end