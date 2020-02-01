# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

#binding.pry

li1=Lifter.new("Me", 50)
li2=Lifter.new("You", 65)
li3=Lifter.new("Her", 38)

g1=Gym.new("London")
g2=Gym.new("Manchester")
g3=Gym.new("Liverpool")

m1=Membership.new(45,li1,g1)
m2=Membership.new(50,li2,g3)
m3=Membership.new(37,li3,g1)
m4=Membership.new(43,li2,g2)
m5=Membership.new(40,li1,g2)

binding.pry

puts "Gains!"
