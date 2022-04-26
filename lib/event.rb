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
      food_truck.inventory.each do |item, count|
        # require "pry"; binding.pry
        itemlist << item.name
      end
    end
    itemlist.sort.uniq
  end

  def overstocked_items
    overstocked_items = []
    food_trucks.each do |food_truck|
      food_truck.inventory.each do |item, count|
        # require "pry"; binding.pry
        overstocked_items << item if count[:food_trucks].size > 1 && count[:quantity] > 50

      end
    end
    overstocked_items
  end

    def sum_helper(item)
      food_trucks.map do |food_truck|
        food_truck.inventory[item]
      end.sum
    end

    def total_inventory
      hash = {}
      food_truck.each do |food_truck|
        food_truck.inventory.each do |item, count|
          # require "pry"; binding.pry
          hash[item] = {count: sum_helper(item}
        end
      end
    end
end
