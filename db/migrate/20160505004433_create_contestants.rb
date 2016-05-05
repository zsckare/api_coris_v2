class CreateContestants < ActiveRecord::Migration
  def change
    create_table :contestants do |t|
      t.integer :learn

      t.timestamps null: false
    end
  end
end
