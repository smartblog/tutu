class TicketsController < ApplicationController
  def new
    @ticket = RailwayStation.new
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

  def purchase
    @start_station = RailwayStation.find(params[:start_station_id])
    @end_station = RailwayStation.find(params[:end_station_id])
    @ticket = Ticket.new
    render :new
  end

  private

  def ticket_params
    params.require(:ticket).permit(:passenger_fio, :passport_number, :start_station_id, :end_station_id, :train_id)
  end
end
