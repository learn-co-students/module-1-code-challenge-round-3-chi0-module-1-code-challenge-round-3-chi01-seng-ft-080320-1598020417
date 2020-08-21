class Role < ActiveRecord::Base
    belongs_to :actor
    belongs_to :movie

def credit
    "#{self.role.character_name}: Played by #{self.actor.name}"
    
end

end

# `Role#credit`
#   - should return a string formatted as follows: `{insert character name}: Played by {insert actor name}`