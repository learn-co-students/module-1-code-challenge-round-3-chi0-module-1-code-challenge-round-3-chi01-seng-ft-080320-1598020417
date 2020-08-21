class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles

    def cast_role(actor, character_name, salary)
        # binding.pry
        # Role.create(Actor.name, )
        # Role.create(tina_fey, "frank", 500) no good need actor instance
    end

    def all_credits
        # "#{self.character_name}: Played by #{self.actor.name}"
        # "#{self.character_name}: Played by #{self.actor.name}"
    end
end

# `Movie#all_credits`
#   - should return an Array of strings with all the roles for this movie formatted as follows: ["{insert character name}: Played by {insert actor name}", "{insert character name}: Played by {insert actor name}", ...]







