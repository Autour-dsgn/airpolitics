class AddForeignKeys < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :user, foreign_key: true
    add_reference :bookings, :politician, foreign_key: true
  end
end
