class IdentifiersController < ApplicationController
  
  before_action :authenticate_user,  only: [ :current, :next ]

  def current
    @identifier = Identifier.find_by identifier_name: 'sample_identifier'
    if params[:current].to_i > 0
      @identifier.update_column( :identifier_value, params[ :current ] )
    end 
    render json: {
      "data": {
        "type": "identifier",
        "value": @identifier[ :identifier_value ].to_i,
        "current": params[ :current ].to_i

      }
    }
  end
  
  def next 
    @identifier = Identifier.find_by identifier_name: 'sample_identifier'
    @identifier.increment!( :identifier_value )
    render json: {
      "data": {
        "type": "identifier",
        "value": @identifier[ :identifier_value ].to_i
      }
    }
  end

  
end
