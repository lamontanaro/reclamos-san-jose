class ClaimsController < ApplicationController
  before_action :set_claim, only: [:show]

  def new
    @claim = Claim.new
  end

  def create
    @claim = Claim.new(build_create_params)
    respond_to do |format|
      if @claim.save
        format.html { redirect_to claim_path(@claim), notice: 'Reclamo creado correctamente.' }
        format.json { render :show, status: :created, location: @claim }
      else
        format.html { render :new }
        format.json { render json: @claim.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def claim_params
    params.require(:claim)
      .permit(:claim_type ,:body)
  end

    def set_claim
      @claim = Claim.find(params[:id])
    end

  def build_create_params
    claim_params.merge(state: 0, claim_code: generate_claim_code)
  end

  def generate_claim_code
    code = SecureRandom.hex(5)
      if Claim.where(claim_code: code).any?
        code = SecureRandom.hex
      end
    code
  end
end