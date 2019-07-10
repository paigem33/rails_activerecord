class AddLimitToCard < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :limit, :integer
  end
end
