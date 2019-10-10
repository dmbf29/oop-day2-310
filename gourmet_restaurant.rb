require_relative 'restaurant'

class GourmetRestaurant < Restaurant
  def initialize(name, city, capacity, category, stars)
    @name = name
    @city = city
    @capacity = capacity
    @category = category
    @reservations = [] # array of name
    @stars = stars
  end

  def print_reservations
    puts "You're not allowed to see this"
  end
end


