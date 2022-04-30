class CreatePoliticians < ActiveRecord::Migration[6.1]
  def change
    create_table :politicians do |t|
      t.string :full_name
      t.string :email
      t.string :password
      t.string :phone_number
      t.string :country
      t.string :address
      t.string :photo
      t.string :gender
      t.text :description
      t.string :political_camp
      t.string :expertise
      t.float :price

      t.timestamps
    end
  end
end
