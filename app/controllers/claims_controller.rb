class ClaimsController < ApplicationController
  def create
    @event = Event.find_by(slug: params[:event_id])
    @claim = @event.claims.new(claim_params)
    @claim.save
    redirect_to :back
  end

  def update
    @claim = Claim.find(params[:claim_id])
    respond_to do |format|
      if params[:add] == "true"
        @claim.items << Item.find(params[:item_id])
      else
        @claim.items.delete(Item.find(params[:item_id]))
      end
      format.json { head :no_content } # 204 No Content
    end
  end

  def claim_params
    params.require(:claim).permit!
  end
end
