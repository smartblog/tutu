class CreateRoutesTrains < ActiveRecord::Migration[5.0]
  def change
    create_table :routes_trains do |t|
      t.integer :route_id
      t.integer :train_id
    end
  end
end
