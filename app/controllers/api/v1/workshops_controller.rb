class api::V1::WorkshopsController < ApplicationController

  def validate
    @workshop = Workshop.find(params[:id])

    dias = Date.now - @workshop.created_at

    if dias < 1
      render json: @workshop
    else
      render status: :unprocessable_entity
    end
  end
end
