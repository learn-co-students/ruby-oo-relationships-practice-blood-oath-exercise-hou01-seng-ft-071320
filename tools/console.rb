require_relative '../config/environment.rb'
require_relative '../lib/bloodoath.rb'
require_relative '../lib/cult.rb'
require_relative '../lib/follower.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

grass = Cult.new("Grass","Leaf Village",2001,"Lettuce Leaf")
lightning = Cult.new("Lightning","Light Village",2003,"Electrickery")
water = Cult.new("Water","Ocean",2006,"Water you doing")
fire = Cult.new("Fire","Volcano", 2006, "May all of your bacon BRUN!")
hidden_leaf = Cult.new("Hidden Leaf","Leaf Village",2010,"Will of Fire")


bulbasaur = Follower.new("Bulbasaur",3,"Vine Whip!")
ivysaur = Follower.new("Ivysaur",6,"Rasor Leaf!")
venusaur = Follower.new("Venusaur", 9,"Solar Beam!")
pikachu = Follower.new("Pikachu", 1, "Thunder Bolt!")
squirtle = Follower.new("Squirtle", 2, "Water Cannon")
charmander = Follower.new("Charmander", 4, "Pyroblast")

grass.recruit_follower(bulbasaur)
grass.recruit_follower(ivysaur)
venusaur.join_cult(grass)
venusaur.join_cult(hidden_leaf)

venusaur.cults
Follower.of_a_certain_age(3)

puts = grass.cult_population #3
puts = Cult.find_by_name("Grass") #cult instance of name "Grass"
puts = Cult.find_by_location("Leaf Village")
puts = Cult.find_by_founding_year(2006)

grass.average_age


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits