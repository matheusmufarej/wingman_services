class Opener < ApplicationRecord
  # Direct associations

  belongs_to :styles,
             :class_name => "Style"

  # Indirect associations

  # Validations

end
