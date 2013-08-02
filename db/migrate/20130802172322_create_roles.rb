class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :actor_id
      t.string :character_name
      t.integer :movie_id

      t.timestamps
    end
  end
end
