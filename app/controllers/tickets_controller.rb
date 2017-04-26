class TicketsController < ApplicationController
  def new
    @ticket = Ticket.new
    @train = Train.find(params[:train_id])
    @begin = RailwayStation.find(params[:start_station_id])
    @end = RailwayStation.find(params[:end_station_id])
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to ticket_path(@ticket)
    else
      render :new
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:passenger_fio, :passport_number, :begin_station_id, :end_station_id, :train_id)
  end
end
