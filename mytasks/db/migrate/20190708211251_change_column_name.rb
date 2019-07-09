class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :tasks, :tasklist_id, :task_list_id
  end
end
