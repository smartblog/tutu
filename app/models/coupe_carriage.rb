class CoupeCarriage < Carriage
  validates :top_seats, :bottom_seats, presence: true

  def places
    places = {top_seats: 0, bottom_seats: 0}
    places[top_seats] += self.top_seats
  end

  def carriage_params
    params.require(:carriage).permit(:type, :top_seats, :bottom_seats, :train_id)
  end
end
