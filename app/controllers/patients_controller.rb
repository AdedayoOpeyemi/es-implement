class PatientsController < ApplicationController
  def index
    response = Patient.__elasticsearch__.search(
      query: {
        multi_match: {
          query: params[:query],
          fields: ['first_name', 'last_name']
        }
      }
    ).results
  
    render json: {
      results: response.results,
      total: response.total
    }
  end
end

