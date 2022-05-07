class RemovePhotoColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :politicians, :photo
  end
end
