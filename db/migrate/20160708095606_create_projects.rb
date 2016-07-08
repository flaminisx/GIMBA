class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.integer :team_id
      t.string :name
      t.text :description
      t.string :logo
      t.string :git_link
      t.string :trello_link
      t.float :needed_budget
      t.float :got_budget

      t.timestamps
    end
  end
end
