class AddAsistentesToContestant < ActiveRecord::Migration
  def change
  	add_column :contestants, :asistentes, :string
  end
end
