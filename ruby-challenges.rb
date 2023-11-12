# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

# Pseudo code:
# create a methos that takes in a hash
def all_us_states hash
    # return the values in each key and used .flatten method to create one array. .sort was used to arrange array in alphbetical order.
    hash.values.flatten.sort
end

p all_us_states us_states
# ["Arizona", "California", "Idaho", "Maine", "Nevada", "New Hampshire", "Oregon", "Rhode Island", "Washington"]

# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# Pseudo code:
# create a class called Bike
class Bike 
    # add getters and setters for each instance variable through an attr_accessor
    attr_accessor :model, :wheels, :current_speed
    # only initialize model since it doesnt nave a set value yet
    def initialize model
        @model = model
        @wheels = 2
        @current_speed = 0
    end
    # create a method to return string with each instance variable included
    def bike_info 
        "The #{@model} bike has #{@wheels} and is going #{@current_speed}"
    end
end
# set the value for model
my_bike = Bike.new('Trek')

puts my_bike.bike_info
# The Trek bike has 2 and is going 0

# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:
# create a class called Bike
class Bike 
    # add getters and setters for each instance variable through an attr_accessor
    attr_accessor :model, :wheels, :current_speed
    # only initialize model since it doesnt nave a set value yet
    def initialize model
        @model = model
        @wheels = 2
        @current_speed = 0
    end
    # create a method to return string with each instance variable included
    def bike_info 
        "The #{@model} bike has #{@wheels} and is going #{@current_speed}"
    end
    # creaye a method that adds the argument to the current speed
    def speed_up speed
        @current_speed = @current_speed + speed
    end
    # create a method that subtracts the argument from the current speed
    def slow_down speed
        @current_speed = @current_speed - speed
        # add a conditional to never let the speed be negative
        if @current_speed < 0
            @current_speed = 0
        end
    end
end
# set the value for model
my_bike = Bike.new('Trek')

my_bike.speed_up(5)
p my_bike.current_speed
# 5
my_bike.speed_up(10)
p my_bike.current_speed
# 15
my_bike.slow_down(7)
p my_bike.current_speed
# 8
my_bike.slow_down(10)
p my_bike.current_speed
# 0

