class LuxCarriage < Carriage
  validates :bottom_seats, presence: true

  def places
    places = {}
    places['Bottom seats'] = bottom_seats
    places
  end
end
