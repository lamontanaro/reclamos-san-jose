class MyClaimController < ApplicationController

  def new
  end

  def show
    @my_claim = Claim.find(params[:id])
  end

  def create
    @my_claim = Claim.find_by(claim_code: params[:claim_code])
    respond_to do |format|
      unless @my_claim.nil?
        format.html { redirect_to my_claim_path(@my_claim), notice: 'Se encontro su reclamo' }
        format.json { render :show, status: :created, location: @my_claim }
      else
        format.html { render :new }
        format.json { render json: @my_claim.errors, status: :unprocessable_entity }
      end
    end
  end

  private
end