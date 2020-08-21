class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles



    #     `Movie#roles`
    #     - returns a collection of all the roles for the movie

    # def roles
    #     Movie.first.roles
    # end



    #   - `Movie#actors`
    #     - returns a collection of all the actors who performed in the movie

        # def actors
        #     Movie.first.actors
        # end

        # `Movie#cast_role(actor, character_name, salary)`
        # - takes a `actor` (an instance of the `Actor` class), a `character_name` (string), 
        # and a `salary` (integer) as arguments, 
        # and creates a new `role` in the database associated 
        # with this movie and the actor

        # def cast_role(actor, character_name, salary)
            # Role.new(self, actors, :character_name, :salary)
        #    # Role.new( self, :actor_id, :character_name, :salary)
            #binding.pry
        #  end

        # Role.create(movie_id: mean_girls.id, actor_id: lindsay_lohan.id, salary: 5, character_name: "lindsay_lohan")

end