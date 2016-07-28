class AddFieldsToProfiles < ActiveRecord::Migration[5.0]
  def change
  	add_column :profiles, :first_name, :string
  	add_column :profiles, :second_name, :string
  	add_column :profiles, :icon, :string
  	add_column :profiles, :profileable_id, :integer

    create_table :profiles_teams, id: false do |t|
      t.belongs_to :profile, index: true
      t.belongs_to :tag, index: true
    end
  end
end
