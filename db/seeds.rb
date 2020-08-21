# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

#movies ( title:### , box_office_earning:####)

puts "Creating movies..."
mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 129_000_000)
spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)

#actors (name:####)

puts "Creating actors..."
lindsay_lohan = Actor.create(name: "Lindsay Lohan")
tina_fey = Actor.create(name: "Tina Fey")
baby_spice = Actor.create(name: "Emma Bunton")
ginger_spice = Actor.create(name: "Geri Halliwell")
scary_spice = Actor.create(name: "Melanie Brown")
sporty_spice = Actor.create(name: "Melanie Chisholm")
posh_spice = Actor.create(name: "Victoria Addams")

#roles (movie_id:###, actor_id###, salary:###, character_name:###)

puts "Creating roles..."
# ***********************************************************
# * TODO: create roles! Remember, a role belongs to a movie *
# * and a role belongs to an actor.                         *
# ***********************************************************
# Create Roles Here

role1 = Role.create(movie_id: mean_girls.id, 
actor_id: lindsay_lohan.id, 
salary: 100000, 
character_name: "Lohan")

role2 = Role.create(movie_id: mean_girls.id, 
actor_id: tina_fey.id, 
salary: 200000, 
character_name: "Fey")

role3 = Role.create(movie_id: spice_world.id, 
actor_id: baby_spice.id, 
salary: 2000000, 
character_name: "Emma")

role4 = Role.create(movie_id: spice_world.id, 
actor_id: ginger_spice.id, 
salary: 300000, 
character_name: "Geri")

role5 = Role.create(movie_id: spice_world.id, 
actor_id: scary_spice.id, 
salary: 1000000, 
character_name: "Melanie")

puts "Seeding done!"