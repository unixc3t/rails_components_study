class CreateAppComponentTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :app_component_teams do |t|
      t.string :name

      t.timestamps
    end
  end
end
