class Train < ActiveRecord::Base
  validates :number, presence: true

  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  has_one :routes_trains
  has_one :route, through: :routes_trains
end
