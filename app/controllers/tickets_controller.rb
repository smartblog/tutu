class TicketsController < ApplicationController
  before_action :authenticate_user!, only: :create

  def new
    @ticket = Ticket.ne
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
