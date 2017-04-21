class AddTimeToRailwayStationsRoutes < ActiveRecord::Migration[5.0]
  def change
    add_column :railway_stations_routes, :arrive_time, :time
    add_column :railway_stations_routes, :departure_time, :time
  end
end
