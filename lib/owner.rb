class Owner
  # code goes here
  
  @@all = []
  @@count = []
  
  def initialize(name)
    @@all << self
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    @@count.count
  end
  
  def self.reset_all
  
  end
  
end