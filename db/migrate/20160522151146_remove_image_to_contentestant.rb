class RemoveImageToContentestant < ActiveRecord::Migration
  def change
  	remove_column :contestants, :image, :string
  end
end
