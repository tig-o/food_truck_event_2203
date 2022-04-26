class Event
  attr_reader :name, :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    # foodtrucks = []
    # @food_trucks.each do |food_truck|
    #   foodtrucks << food_truck.name
    # end
    # foodtrucks

    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(desired_item)
    # # require "pry"; binding.pry
    # @food_trucks.find_all do |food_truck|
    #   # require "pry"; binding.pry
    #   food_truck.
    # end

    @food_trucks.select do |truck|
      # require "pry"; binding.pry
      truck.inventory.include? desired_item
    end
  end
end
