require_relative 'restaurant'

# child < parent
class FastFoodRestaurant < Restaurant
  def initialize(name, city, capacity, category, takeout)
    super(name, city, capacity, category) # initialize in Restaurant
    @takeout = takeout
  end

  def open?
    Time.now.hour >= 9 && Time.now.hour < 16 || super
  end

  def self.categories
    super << 'fast food'
  end



 # mos_burger.closed?


  # super calls the parent method of same name
end
