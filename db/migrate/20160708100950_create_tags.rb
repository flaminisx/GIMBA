class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :name

      t.timestamps
    end
    
    create_table :teams_tags, id: false do |t|
      t.belongs_to :team, index: true
      t.belongs_to :tag, index: true
    end
    
    create_table :projects_tags, id: false do |t|
      t.belongs_to :project, index: true
      t.belongs_to :tag, index: true
    end
    
    create_table :events_tags, id: false do |t|
      t.belongs_to :event, index: true
      t.belongs_to :tag, index: true
    end
  end
end
