class AddUrlimageToContestant < ActiveRecord::Migration
  def change
    add_column :contestants, :url_image, :string
    add_column :contestants, :workshop, :integer
  end
end
