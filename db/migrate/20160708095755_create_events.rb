class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :project_id
      t.string :name
      t.text :description
      t.string :photo
      t.string :link
      t.string :trello_tag

      t.timestamps
    end
  end
end
