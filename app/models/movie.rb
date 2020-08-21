class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles

    def cast_role(actor, character_name, salary)
        # Role.create(actor_id: actor_id, character_name: "jane", salary: 500) ------- latest try still cant figure out actor
        # binding.pry
        # Role.create(Actor.name, )
        # Role.create(tina_fey, "frank", 500) no good need actor instance
    end

    def all_credits
        # "#{self.character_name}: Played by #{self.actor.name}"
        # "#{self.character_name}: Played by #{self.actor.name}"
    end
end


# `Movie#cast_role(actor, character_name, salary)`
#   - takes a `actor` (an instance of the `Actor` class), a `character_name` (string), and a `salary` (integer) as arguments, and creates a new `role` in the database associated with this movie and the actor

# `Movie#all_credits`
#   - should return an Array of strings with all the roles for this movie formatted as follows: ["{insert character name}: Played by {insert actor name}", "{insert character name}: Played by {insert actor name}", ...]







