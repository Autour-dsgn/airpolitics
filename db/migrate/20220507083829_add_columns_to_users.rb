class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :full_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :country, :string
    add_column :users, :photo, :string
    add_column :users, :gender, :string
  end
end
