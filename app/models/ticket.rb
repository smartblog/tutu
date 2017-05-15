class Ticket < ActiveRecord::Base
  belongs_to :train
  belongs_to :begin_station, class_name: 'RailwayStation', foreign_key: :begin_station_id
  belongs_to :end_station, class_name: 'RailwayStation', foreign_key: :end_station_id
  belongs_to :user, optional: true

  after_create :send_buy_notification
  after_destroy :send_cancel_notification

  def route_name
    "#{begin_station.title} - #{end_station.title}"
  end

  private

  def send_buy_notification
    TicketsMailer.buy_ticket(self.user, self).deliver_now
  end

  def send_cancel_notification
    TicketsMailer.cancel_ticket(self.user, self).deliver_now
  end
end
