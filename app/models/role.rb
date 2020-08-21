class Role < ActiveRecord::Base
    belongs_to :actor
    belongs_to :movie


    #     - `Role#actor`
    #     - should return the `Actor` instance for this role

    # def actor
    #     Role.first.actor
    # end




    #   - `Role#movie`
    #     - should return the `Movie` instance for this role

    # def movie
    #     Role.first.movie
    # end

    # - `Role#credit`
    #   - should return a string formatted as follows: 
    # `{insert character name}: Played by {insert actor name}`

    def credit
         puts "#{Role.first.character_name}: Played by #{Actor.first.name}"
    end




end