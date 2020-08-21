class Actor < ActiveRecord::Base
    has_many :roles 
    #binding.pry
    has_many :movies, through: :roles 
end


# x- `Actor#roles`
#   x- should return a collection of all the roles that the actor has played
# x- `Actor#movies`
#   x- should return a collection of all the movies that the actor has performed in

# (i.e. `has_many`, `has_many through`, and `belongs_to`