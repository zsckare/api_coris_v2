class api::V1::WorkshopsController < ApplicationController
  before_action :set_workshop, only: [:show, :edit, :update, :destroy]


  # GET /workshops/1
  # GET /workshops/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workshop
      @workshop = Workshop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workshop_params
      params.require(:workshop).permit(:folio)
    end
end
