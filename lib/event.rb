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
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(desired_item)
    @food_trucks.select do |truck|
      # require "pry"; binding.pry
      truck.inventory.include? desired_item
    end
  end

  def sorted_item_list
    itemlist = []
    food_trucks.each do |food_truck|
      # require "pry"; binding.pry
      food_truck.inventory.each do |item, count|
        # require "pry"; binding.pry
        itemlist << item.name
      end
    end
    itemlist.sort.uniq
  end
end
