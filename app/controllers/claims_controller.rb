class ClaimsController < ApplicationController
  def create
    @event = Event.find_by(slug: params[:event_id])
    @claim = @event.claims.new(claim_params)
    @claim.save
    redirect_to :back
  end

  def update
    @claim = Claim.find(params[:id])

    respond_to do |format|
      if params[:name] == 'username'
        if @claim.update_attributes({params[:name] => params[:value]})
          format.json { head :no_content } # 204 No Content
        end
      elsif params[:name] == 'item_id'
        @claim.items.delete_all
        params[:value].each do |item_id|
          @claim.items << Item.find(item_id)
        end
        format.json { head :no_content } # 204 No Content
      else
        format.json { render json: @claim.errors, status: :unprocessable_entity }
      end
    end
  end

  def claim_params
    params.require(:claim).permit!
  end
end
