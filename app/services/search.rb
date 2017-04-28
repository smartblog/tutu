module Search
  def self.trains(start_station, end_station)
    Train.station_in_route(start_station) & Train.station_in_route(end_station)
  end
end
