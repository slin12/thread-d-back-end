class CreateDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :designs do |t|
      t.integer :user_id
      t.integer :pattern_id
      t.string :model
      t.timestamps
    end
  end
end
