class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :folio

      t.timestamps null: false
    end
  end
end
