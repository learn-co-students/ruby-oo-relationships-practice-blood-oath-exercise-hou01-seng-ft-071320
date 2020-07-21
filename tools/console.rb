require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


cult1 = Cult.new("Davidians", "Waco", 1985 , "We crazy yo.",12)
cult2 = Cult.new("Kpop", "Korea", 2015 , "Heyo!",2)
cult3 = Cult.new("Jonestown", "Jownstown", 1979 , "Drink the Koolaide.", 15)
cult4 = Cult.new("CrazyK", "Korea", 2012, "Whoop!", 4)


follower1 = Follower.new("Ricky", 19, "Whatever man.")
follower2 = Follower.new("Alice", 21, "OK Boomer")
follower3 = Follower.new("Bob", 30, "LALALA")
follower4 = Follower.new("Kitty Kat", 2, "Meow")
follower5 = Follower.new("Kitty Kat1", 2, "Meow")
follower6 = Follower.new("Kitty Kat2", 2, "Meow")
follower7 = Follower.new("Kitty Kat3", 2, "Meow")
follower8 = Follower.new("Kitty Kat4", 2, "Meow")
follower9 = Follower.new("Kitty Kat5", 2, "Meow")
follower10 = Follower.new("Kitty Kat6", 2, "Meow")
follower11 = Follower.new("Kitty Kat7", 2, "Meow")
follower12 = Follower.new("Kitty Kat8", 2, "Meow")


cult1.recruit_follower(follower1,1975)
cult1.recruit_follower(follower2,2001)
cult2.recruit_follower(follower1,2002)
cult3.recruit_follower(follower1,2005)
cult2.recruit_follower(follower2,2001)

follower2.join_cult(cult3,2003)
follower3.join_cult(cult3, 2005)
follower3.join_cult(cult2,2003)
follower3.join_cult(cult2,2003)
follower7.join_cult(cult2,2003)
follower8.join_cult(cult2,2003)
follower9.join_cult(cult2,2003)
follower10.join_cult(cult2,2003)
follower10.join_cult(cult3,2003)
follower9.join_cult(cult3,2003)
follower8.join_cult(cult3,2003)
follower7.join_cult(cult3,2003)
follower6.join_cult(cult3,2003)


binding.pry


bloodoath1 = BloodOath.new(follower1, cult1, 1990)
bloodoath2 = BloodOath.new(follower2, cult1, 1991)
bloodoath3 = BloodOath.new(follower3, cult2, 1990)
bloodoath4 = BloodOath.new(follower4, cult3, 1990)



puts "Mwahahaha!" # just in case pry is buggy and exits