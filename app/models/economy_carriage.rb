class EconomyCarriage < Carriage
  validates :side_top_seats, :side_bottom_seats, presence: true

  def carriage_params
    params.require(:carriage).permit(:type, :top_seats, :bottom_seats, :side_top_seats, :side_bottom_seats, :train_id)
  end
end
