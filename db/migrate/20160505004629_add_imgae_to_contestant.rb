class AddImgaeToContestant < ActiveRecord::Migration
  def change
    add_column :contestants, :image, :string
  end
end
