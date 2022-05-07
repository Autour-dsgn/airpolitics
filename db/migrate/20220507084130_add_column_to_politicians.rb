class AddColumnToPoliticians < ActiveRecord::Migration[6.1]
  def change
    add_column :politicians, :payment_method, :string
  end
end
