class Owner
  # code goes here
  
  attr_accessor :name, :fish, :cat, :dog, :pets
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
    pets[:fishes] << Fish.new(name)
  end
  
  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end
  
  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end
  
  def walk_dogs
    pets[:dogs].each{|dog| dog.mood = "happy"}
  end
   
  def play_with_cats
    pets[:cats].each{|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    pets[:fishes].each{|fish| fish.mood = "happy"}
  end
  
  def sell_pets
    pets.each {|species, pet|
      pet.each {|animal| animal.mood = "nervous"}
      pet.clear
    }
  end
  
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
  
end