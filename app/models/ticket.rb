class Ticket < ActiveRecord::Base
  belongs_to :train
  belongs_to :begin_station, class_name: 'RailwayStation', foreign_key: :begin_station_id
  belongs_to :end_station, class_name: 'RailwayStation', foreign_key: :end_station_id
  belongs_to :user

  def buy_ticket(passenger_fio, passport_number, start_station_id, end_station_id)
    ticket = Ticket.new(passenger_fio: passenger_fio, passport_number: passport_number, start_station_id: start_station_id, end_station_id: end_station_id)
  end
end
