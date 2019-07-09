class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :number
      t.string :exp_date
      t.integer :owner_id
      t.integer :limit

      t.timestamps
    end
  end
end
