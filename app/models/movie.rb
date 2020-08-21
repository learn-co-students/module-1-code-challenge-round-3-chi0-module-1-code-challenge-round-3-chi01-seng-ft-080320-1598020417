class Movie < ActiveRecord::Base
    has_many :roles 
    has_many :actors, through: :roles 

    def cast_role(actor, salary, character_name)
        Role.create()
    end 
end

# x- `Movie#roles`
#   x- returns a collection of all the roles for the movie
# x- `Movie#actors`
#   x- returns a collection of all the actors who performed in the movie

# - `Movie#cast_role(actor, character_name, salary)`
#   x- takes a `actor` (an instance of the `Actor` class), 
#   x a `character_name` (string), and a `salary` (integer) as arguments, 
#    and creates a new `role` in the database associated with this movie 
#    and the actor