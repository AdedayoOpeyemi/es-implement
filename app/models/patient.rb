require 'elasticsearch/model'

class Patient < ApplicationRecord
  has_many :cases

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  def as_indexed_json(options = {})
    self.as_json(
      only: [:id, :first_name, :last_name],
      include: {
        cases: {
          only: [:type, :status]
        }
      }
    )
  end 
end
