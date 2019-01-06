class Admin::ClaimsController < Admin::BaseController
  before_action :set_claim, only: [:edit, :update, :show]

  def index
    @claims = Claim.all
  end

  def update
    respond_to do |format|
      if @claim.update(claim_params)
        format.html { redirect_to admin_claims_path, notice: 'Se cambio el estado del reclamo.' }
        format.json { render :show, status: :ok, location: @claim }
      else
        format.html { render :edit }
        format.json { render json: @claim.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_claim
    @claim = Claim.find(params[:id])
  end

  def claim_params
      params.require(:claim).permit(:id)
  end
end
