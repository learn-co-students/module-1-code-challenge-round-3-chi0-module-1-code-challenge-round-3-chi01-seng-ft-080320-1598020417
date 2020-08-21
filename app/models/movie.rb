class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles

def cast_role(actor, character_name, salary)
    Role.new(actor_id: actor.id, character_name: character_name.id, salary: salary.actor_id)
   
end

end 

`Movie#cast_role(actor, character_name, salary)`
    - takes a `actor` (an instance of the `Actor` class), a `character_name` (string), and a `salary` (integer) as arguments, and creates a new `role` in the database associated with this movie and the actor