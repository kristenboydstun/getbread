class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    binding.pry
    if @event.save
      redirect_to confirmation_event_path(@event)
    else
      render :new
    end
  end

  def event_params
    params.require(:event).permit!
  end

  def show
    @event = Event.find_by(slug: params[:id])
    @item = Item.new
    @claim = Claim.new
  end

  def confirmation
    @event = Event.find_by(slug: params[:id])
  end

  def admin
    @event = Event.find_by(slug: params[:id])
  end
end
