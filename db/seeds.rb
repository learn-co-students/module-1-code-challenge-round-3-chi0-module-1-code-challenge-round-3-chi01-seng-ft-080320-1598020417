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
r1 = Role.create(actor_id: lindsay_lohan.id, movie_id: mean_girls.id, salary: 500, character_name: "joan")
r2 = Role.create(actor_id: tina_fey.id, movie_id: mean_girls.id, salary: 600, character_name: "ron")
r3 = Role.create(actor_id: baby_spice.id, movie_id: spice_world.id, salary: 300, character_name: "mary")
r4 = Role.create(actor_id: ginger_spice.id, movie_id: spice_world.id, salary: 700, character_name: "bobo")
r5 = Role.create(actor_id: scary_spice.id, movie_id: spice_world.id, salary: 800, character_name: "rick")
r6 = Role.create(actor_id: sporty_spice.id, movie_id: spice_world.id, salary: 500, character_name: "morty")
r7 = Role.create(actor_id: posh_spice.id, movie_id: spice_world.id, salary: 300, character_name: "homer")
r8 = Role.create(actor_id: tina_fey.id, movie_id: spice_world.id, salary: 100, character_name: "archer")

# ***********************************************************
# * TODO: create roles! Remember, a role belongs to a movie *
# * and a role belongs to an actor.                         *
# ***********************************************************
# Create Roles Here

# binding.pry
puts "Seeding done!"