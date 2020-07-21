require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

matt = Follower.new("matt", 20, "hello world")
bob = Follower.new("bob", 20, "goodbye world")
frank = Follower.new("frank", 33, "world")

manson = Cult.new("manson", "cali", 1967, "follow or die")
manson = Cult.new("manson", "cali", 1967, "follow or die")
waco = Cult.new("waco", "Texas", 1980, "all for one")
costa_rica = Cult.new("costa", "costa rica", 1980, "all for one")


b1 = BloodOath.new(matt, manson, 1969)
b4 = BloodOath.new(matt, manson, 1969)

b2 = BloodOath.new(bob, manson, 1970)
b3 = BloodOath.new(frank, waco, 1982)

manson.average_age

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits