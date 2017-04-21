class EconomyCarriage < Carriage
  validates :side_top_seats, :side_bottom_seats, presence: true

  def places
    places = {}
    places['Top Seats'] = top_seats
    places['Bottom Seats'] = bottom_seats
    places['Side Top Seats'] = side_top_seats
    places['Side Bottom Seats'] = side_bottom_seats
    places
  end
end
