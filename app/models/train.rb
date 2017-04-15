class Train < ActiveRecord::Base
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  belongs_to :route, optional: true
  has_many :tickets
  has_many :carriages

  def calculate_carriages
    @data = {plac: 0, plac_up: 0, plac_down: 0, coupe: 0, coupe_up: 0, coupe_down: 0 }
    self.carriages.each do |carriage|
     if carriage.class == CoupeCarriage
       @data[:coupe] += 1
       @data[:coupe_up] += carriage.top_seats
       @data[:coupe_down] += carriage.bottom_seats
     elsif carriage.class == EconomyCarriage
       @data[:plac] += 1
       @data[:plac_up] += carriage.count_up
       @data[:plac_down] += carriage.count_down
     end
    end
    @data
  end

end
