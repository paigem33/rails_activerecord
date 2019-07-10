class AddTimestampToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :duedate, :timestamp
  end
end
