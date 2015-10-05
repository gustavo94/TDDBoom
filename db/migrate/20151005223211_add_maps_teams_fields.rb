class AddMapsTeamsFields < ActiveRecord::Migration
  def change
  	add_column :maps_teams, :solved, :boolean
  	add_column :maps_teams, :optimizations_achieved, :string
  end
end
