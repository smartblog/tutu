class SeatCarriage < Carriage
  validates :seat_places, presence: true

  def places
    places = {}
    places['Seat places'] = seat_places
    places
  end
end
