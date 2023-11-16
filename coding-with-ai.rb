# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.

# Before I loo on AI website, id like to guess. I think that this prints the number of each value in the array. not sure what rduce does but i assume it iterates through the array somehow.

taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']
# here you are using the .reduce method which iterates through the array and adds each time a value appears. the count will start at 0 due to the Hash.new(0).
totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
  # the results are being incremented by 1 for each time the value in the array appears downcased.
  result[vote.downcase] += 1
  result
end

p totals



