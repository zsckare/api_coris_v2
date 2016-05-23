class Api::V1::WorkshopsController < Api::V1::ApplicationController

  def validate
    @workshops = Workshop.where(folio: params[:folio])

    json_reponse = []
    i = 0
    @workshops.each do |workshop|
      dias = Time.now - workshop.created_at
      if dias <= 86400
         json_reponse[i]={
          id: workshop.id,
          folio: workshop.folio,
          dias: dias
        }
        i=i+1

        render json: json_reponse
      else
      end
    end
    

  end
end
