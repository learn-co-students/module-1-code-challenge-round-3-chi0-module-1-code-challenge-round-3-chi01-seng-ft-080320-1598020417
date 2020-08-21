# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Role.destroy_all
Movie.destroy_all
Actor.destroy_all

puts "Creating movies..."
mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 129_000_000)
spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)

puts "Creating actors..."
lindsay_lohan = Actor.create(name: "Lindsay Lohan")
tina_fey = Actor.create(name: "Tina Fey")
baby_spice = Actor.create(name: "Emma Bunton")
ginger_spice = Actor.create(name: "Geri Halliwell")
scary_spice = Actor.create(name: "Melanie Brown")
sporty_spice = Actor.create(name: "Melanie Chisholm")
posh_spice = Actor.create(name: "Victoria Addams")

puts "Creating roles..."
# Was scared to remove the underscore from the character_name string and then run rake db:seed, so I left it as it is.
Role.create(movie_id: mean_girls.id, actor_id: lindsay_lohan.id, salary: 100, character_name: "lindsay lohan")
Role.create(movie_id: spice_world.id, actor_id: tina_fey.id, salary: 200, character_name: "Tina fey")
Role.create(movie_id: spice_world.id, actor_id: scary_spice.id, salary: 300, character_name: "Melanie Brown")
Role.create(movie_id: spice_world.id, actor_id: lindsay_lohan.id, salary: 100, character_name: "lindsay_lohan")
# ***********************************************************
# * TODO: create roles! Remember, a role belongs to a movie *
# * and a role belongs to an actor.                         *
# ***********************************************************
# Create Roles Here

puts "Seeding done!"