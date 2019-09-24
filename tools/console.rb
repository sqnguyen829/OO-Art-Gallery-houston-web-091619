require_relative '../config/environment.rb'
require 'pry'

a1 = Artist.new("Jake .J", 5)
a2 = Artist.new("Gus G.", 7)
a3 = Artist.new("Sam S.", 9)

g1 = Gallery.new("Circle Building", "Houston")
g2 = Gallery.new("Square Building", "Dallas")
g3 = Gallery.new("Triangle Building", "Austin")

p1 = Painting.new(a2,g3,"Red", 100000)
p2 = Painting.new(a3,g2,"Blue", 9000)
p3 = Painting.new(a1,g2,"Green", 200)
p4 = Painting.new(a2,g3,"Yellow", 70000000)
p5 = Painting.new(a1,g1,"Purle", 80000)








binding.pry
0

puts "Bob Ross rules."
