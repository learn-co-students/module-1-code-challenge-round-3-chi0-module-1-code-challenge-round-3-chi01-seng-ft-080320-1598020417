class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.integer :salary 
      t.string :character_name
    end 
  end
end


