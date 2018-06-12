class Opener < ApplicationRecord
  # Direct associations

  has_many   :approaches,
             :dependent => :destroy

  belongs_to :styles,
             :class_name => "Style"

  # Indirect associations

  # Validations

end
