class CoupeCarriage < Carriage
  validates :top_seats, :bottom_seats, presence: true

  def places
    places = {}
    places['Top Seats'] = top_seats
    places['Bottom seats'] = bottom_seats
    places
  end
end
