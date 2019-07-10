class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :tasklist_id
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end
