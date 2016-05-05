class AddUseridToContestant < ActiveRecord::Migration
  def change
    add_column :contestants, :userid, :string
  end
end
