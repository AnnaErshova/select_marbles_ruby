a) What is the runtime complexity of your selectMarble method?
  O(n)

b) What is the runtime complexity of your entire program, from initialization, until the last marble
is picked?
  O(n) + O(n) = O(n) (assuming generating a random number is O(1))

c) How would you change your program, if at all, if you had thousands of marbles?

   I originally populated the array of marbles and then popped off marbles one by one to imitiate a 'real-life' scenario where we would start with a populated bag of marbles. However, I realized I was effectively wasting lines of code and creating a new variable in the process, so I re-factored it so that the colors are just randomly drawn.

   Sample from the original solution:

    # populating array of marbles with 'count_of_marbles' of randomly selected colors
    # def make_marbles 
    #   @marble_array = @number_of_marbles.times.map { COLOR_OPTIONS_ARRAY.sample }
    # end

    then I used 'pop' to remove a marble one my one.

  The re-factored solution would scale well with thousands of marbles, so there is no need to change the program to accommodate that.

d) How would you change your program, if at all, if you had thousands of colors?

  Same logic as c).
