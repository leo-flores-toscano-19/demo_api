class Identifier < ApplicationRecord
    
  # Basic password validation, configure to your liking.
    validates_length_of       :identifier_name, maximum: 50, minimum: 6, allow_nil: true, allow_blank: false
    validates_confirmation_of :identifier_name, allow_nil: true, allow_blank: false
  
    # Make sure identifier_name is present and unique.
    validates_presence_of     :identifier_name
    validates_uniqueness_of   :identifier_name

end
