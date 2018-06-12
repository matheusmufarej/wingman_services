class Venue < ApplicationRecord
  # Direct associations

  has_many   :approaches,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
