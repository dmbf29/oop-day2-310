require_relative 'chef'

class Restaurant
  def self.categories
    %w(thai japanese chinese burgers)
  end

  attr_reader :name, :city, :chef
  attr_accessor :capacity
  attr_writer :reservations
  # Restaurant.new -> empty, then instance.intialize
  # .new -> creates instance
  # .intialize -> storing initial data
  def initialize(name, city, capacity, category, chef_name)
    @name = name
    @city = city
    @capacity = capacity
    @category = category
    @reservations = [] # array of name
    @chef = Chef.new(chef_name, self) # instance of a Chef
  end


  # 18-23
  def open?
    Time.now.hour >= 18 && Time.now.hour < 23
  end

  # yoshi.open_status
  def open_status
    open? ? 'open' : 'closed'
  end

  def closed?
    !open?
  end

  def reserve(name)
    @reservations << name
  end

  def print_reservations
    @reservations.each_with_index do |name, index|
      puts "#{index + 1}.) #{name}"
    end
  end
end







