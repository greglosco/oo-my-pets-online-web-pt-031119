class Owner
  # code goes here
  
  @@all = []
  @@count = []
  
  def initialize(name)
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    @@count << self
  end
  
  def self.reset_all
  
  end
  
end