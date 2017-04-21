class Train < ActiveRecord::Base
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  belongs_to :route, optional: true
  has_many :tickets
  has_many :carriages

  def sort_carriages
    carriages.order(number: rev_carriages_sort ? :desc : :asc)
  end

  def calculate_places(carriage_type, places)
    carriages.where(type: carriage_type).sum(places)
  end

end
