class CarriagesController < ApplicationController
  before_action :set_carriage, only: [:show, :edit, :update, :destroy]
  before_action :set_train, only: [:new, :create]

  def index
    @carriages = Carriage.all
  end

  def show
  end

  def new
    @carriage = Carriage.new
  end

  def edit
  end

  def create
    @carriage = @train.carriages.new(carriage_params)
    if @carriage.save
      redirect_to @train, notice: 'Carriage was successfully created.'
    else
      render :new
    end
  end

  def update
    if @carriage.update(carriage_params)
      redirect_to carriage_path(@carriage), notice: 'Carriage was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @carriage.destroy
    redirect_to carriages_url, notice: 'Carriage was successfully destroyed.'
  end

  private
  
  def set_carriage
    @carriage = Carriage.find(params[:id])
  end

  def set_train
    @train = Train.find(params[:train_id])
  end

  def carriage_params
    params.require(:carriage).permit(:type, :top_seats, :bottom_seats, :side_top_seats, :side_bottom_seats, :seat_places, :train_id)
  end
end
