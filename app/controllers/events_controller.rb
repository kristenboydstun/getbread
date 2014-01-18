class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    binding.pry
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def event_params
    params.require(:event).permit!
  end
end
