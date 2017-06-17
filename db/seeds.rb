# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


##### MODEL SEEDS #####

#USERS
User.destroy_all
u1 = User.create name: "Jerry Stack", ski_type: "Skier", user_id: "JerryoftheDay"
u2 = User.create name: "Bill Murray", ski_type: "Snowboarder", user_id: "Muzza"
u3 = User.create name: "Tanner Hall", ski_type: "Skier", user_id: "THall420"

puts "Created #{ User.all.length } users"

#MOUNTAINS
Mountain.destroy_all
m1 = Mountain.create name: "Thredbo", number_of_runs: "25", highest_point: "2228"
m2 = Mountain.create name: "Whistler", number_of_runs: "225", highest_point: "2440"
m3 = Mountain.create name: "Revelstoke", number_of_runs: "100", highest_point: "2225"

puts "Created #{ Mountain.all.length } mountains"

#RUNS
Run.destroy_all
r1 = Run.create name: "Michael's Mistke", difficulty: "Black", length: "800"
r2 = Run.create name: "Spanky's Ladder", difficulty: "Dobule Black", length: "1600"
r3 = Run.create name: "Shoot the banker", difficulty: "Double Black", length: "1700"
r4 = Run.create name: "Glacier Bowl", difficulty: "Black", length: "3000"
r5 = Run.create name: "Air Jordan", difficulty: "Double Black", length: "600"



##### RELATIONSHIP SEEDS #####

#USER -> MOUTNAINS


#Reverse


#USER -> RUNS
u1.runs << r1 << r2 << r3 << r4 << r5
u2.runs << r1 << r2
u3.runs << r3 << r4 << r5

#Reverse


#MOUNTAIN -> RUNS
m1.runs << r1
m2.runs << r2 << r4 << r5
m3.runs << r3
