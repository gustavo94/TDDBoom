class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :name
      t.text :board
      t.string :solution
      t.string :optimizations
      t.integer :level

      t.timestamps null: false
    end
  end
end
