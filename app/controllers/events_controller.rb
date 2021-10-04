class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end


  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      redirect_to @event, notice: "Your event was created"
    else
      render :new, notice: "Try again"
    end
  end


  def show
    @event = Event.find(params[:id])
  end

  private
  def event_params
    params.require(:event).permit(:location,:date)
  end
end
