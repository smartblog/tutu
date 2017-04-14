class RailwayStation < ApplicationRecord
  has_many :trains, foreign_key: :current_station_id
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes

  validates :title, presence: true

  scope :sort_number, -> { order('railway_stations_routes.order_number') }

  def update_order_number(route, number)
    self.railway_stations_routes.where(route_id: route).update(order_number: number)
  end
end
