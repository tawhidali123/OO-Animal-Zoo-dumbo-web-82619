require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

zoo1 = Zoo.new("Bronx Zoo", "midtown")
zoo2 = Zoo.new("Amazon", "brazil")
zoo3 = Zoo.new("Forest", "far away")

dog1 = Animal.new("dog", "cute", 20, zoo1)

dog2 = Animal.new("dog", "ugly", 30, zoo2)
cat1 = Animal.new("cat", "not nice", 80, zoo2)



binding.pry
puts "done"
