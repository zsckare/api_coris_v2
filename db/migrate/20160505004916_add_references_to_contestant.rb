class AddReferencesToContestant < ActiveRecord::Migration
  def change
    add_reference :contestants, :workshop, index: true, foreign_key: true
  end
end
