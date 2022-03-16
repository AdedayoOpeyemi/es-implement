class PatientsController < ApplicationController
  def index

    if params[:query].blank? 
      render json: {
        message: "Provide parameter"
      }
    else
      response = Patient.__elasticsearch__.search(
        query: {
          multi_match: {
            query: params[:query],
            fields: ['first_name', 'last_name']
          }
        }
      ).records
    
      render json: {
        results: response.results,
        total: response.total
      }
    end
  end
end

