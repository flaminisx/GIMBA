class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.integer :speaker_id
      t.string :name
      t.string :icon
      t.string :slack_name

      t.timestamps
    end
  end
end
