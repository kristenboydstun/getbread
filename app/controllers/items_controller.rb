class ItemsController < ApplicationController
  def create
    @event = Event.find_by(slug: params[:event_id])
    @item = @event.items.new(item_params)
    @item.save
    redirect_to :back
  end

  def item_params
    params.require(:item).permit!
  end
end
