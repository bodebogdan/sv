class CreateHeros < ActiveRecord::Migration
  def change
    create_table :heros do |t|
      t.string :role
      t.integer :level
      t.string :attribute

      t.timestamps
    end
  end
end
