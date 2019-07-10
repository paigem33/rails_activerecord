class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :password
      t.string :email
      t.timestamps
    end
  end
end
