class ItemsController < ApplicationController
  def create
    @event = Event.find_by(slug: params[:event_id])
    @item = @event.items.new(item_params)
    @item.save
    redirect_to :back
  end

  def update
    @item = Item.find(params[:id])

    respond_to do |format|
      if @item.update_attributes({params[:name] => params[:value]})
        format.json { head :no_content } # 204 No Content
      else
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def item_params
    params.require(:item).permit!
  end
end
