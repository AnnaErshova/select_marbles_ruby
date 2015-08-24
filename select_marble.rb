# Write a program to simulate picking a marble out of a bag of colored marbles without
# replacement (marbles are not added back to the bag after selecting them). Assume we have 3
# colors: red, green, and blue. Your program should print out the color of each marble selected until
# the bag is empty

# Assume: initialize an instance of the class with a number of marbles to be created / removed (default is 0)
# Assume: color choices will be hard-coded as RGB, not initialized with the marbles
# Assume: no need to populate the marble bag in advance. Randomization will happen when marbles are drawn.

class SelectMarble

  COLOR_OPTIONS_ARRAY = ["red","green","blue"]

  def initialize(number_of_marbles = 0)
    @number_of_marbles = number_of_marbles
  end

  def remove_marbles
    i = 1
    until i==@number_of_marbles+1 do
      puts select_marble(i)
      i += 1
    end
  end

    private 

    def select_marble(i)
      puts "Removing #{COLOR_OPTIONS_ARRAY.sample}..."
      calculate_remaining_marbles(i)
    end

    # ensures correct grammar
    def calculate_remaining_marbles(i)
      @number_of_marbles-i == 1 ? "There is 1 marble left now." : "There are #{@number_of_marbles-i} marbles left now." 
    end

end

a = SelectMarble.new(50)
a.remove_marbles