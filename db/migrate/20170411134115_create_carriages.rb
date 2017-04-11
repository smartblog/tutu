class CreateCarriages < ActiveRecord::Migration[5.0]
  def change
    create_table :carriages do |t|
      t.string :carriage_type
      t.integer :count_up
      t.integer :count_down

      t.timestamps
    end
  end
end
