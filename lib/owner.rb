class Owner
  # code goes here
  
  attr_accessor :name, 
  attr_reader :species
  
  @@all = []
  @@count = []
  
  def initialize(name)
    @@all << self
    @@count << self
    @species = name
    @pets = {:fishes => [], :dogs => [], :cats=> []}
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
  
  def say_species
    "I am a #{@species}."
  end
  
  def pets
    @pets
  end
  
  def buy_fish(name)
    pets[:fishes] = Fish.new(name)
  end
  
  def buy_dog(name)
    pets[:dogs] = Dog.new(name)
  end
  
  def buy_cat(name)
    pets[:cats] = Cat.new(name)
  end
  
end