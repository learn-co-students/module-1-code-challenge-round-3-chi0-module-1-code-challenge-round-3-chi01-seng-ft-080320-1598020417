class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.integer :movie_id
      t.integer :actor_id
      t.string :character_name
      t.integer :salary
    end
  end
end

