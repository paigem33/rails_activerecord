class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :cat_type
      t.string :color
      t.integer :rating

      t.timestamps
    end
  end
end
