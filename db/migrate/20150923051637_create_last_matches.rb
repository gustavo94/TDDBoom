class CreateLastMatches < ActiveRecord::Migration
  def change
    create_table :last_matches do |t|
      t.string :winner
      t.integer :winner_resources
      t.integer :winner_problem_solved
      t.integer :winner_optimizations_archieved
      t.decimal :avg_resources
      t.decimal :avg_problem_solved
      t.decimal :avg_optimizations_archieved

      t.timestamps null: false
    end
  end
end
