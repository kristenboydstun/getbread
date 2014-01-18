class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def event_params
    params.require(:event).permit!
  end

  def show
    @event = Event.find(params[:id])
  end
end
