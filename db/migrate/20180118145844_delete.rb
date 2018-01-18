class Delete < ActiveRecord::Migration[5.1]
  def change
    drop_table :designs
  end
end
