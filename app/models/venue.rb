class Venue < ApplicationRecord
  # Direct associations

  belongs_to :style

  has_many   :approaches,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :approaches,
             :source => :user

  # Validations

end
