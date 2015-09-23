class TeamsMapsRelation < ActiveRecord::Migration
  def self.up
    create_table :maps_teams, :id => false do |t|
      t.integer :team_id
      t.integer :map_id
    end

    add_index :maps_teams, [:team_id, :map_id], unique:true

    execute <<-SQL
		ALTER TABLE maps_teams
		ADD CONSTRAINT fk_to_team
		FOREIGN KEY(team_id)
		REFERENCES teams(id);
    SQL

    execute <<-SQL
		ALTER TABLE maps_teams
		ADD CONSTRAINT fk_to_map
		FOREIGN KEY(map_id)
		REFERENCES maps(id);
    SQL
  end

  def self.down
    drop_table :maps_teams
  end
end
