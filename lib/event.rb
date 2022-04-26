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
end
