class Role < ActiveRecord::Base
    belongs_to :actor
    belongs_to :movie 

    def credit
        puts "#{self}: Played by #{actor}"
    end 
end


# x- `Role#actor`
#   x- should return the `Actor` instance for this role
# x- `Role#movie`
#   x- should return the `Movie` instance for this role

# x- `Role#credit`
#   x- should return a string formatted as follows: 
#   `{insert character name}: Played by {insert actor name}`

