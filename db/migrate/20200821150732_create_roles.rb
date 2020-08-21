class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.integer :movie_id
      t.integer :actor_id
      t.integer :salary
      t.string :character_name

    end 

  end
end

# movie_id (int)
# actor_id (int)
#salary (int )
#character_name (str)


