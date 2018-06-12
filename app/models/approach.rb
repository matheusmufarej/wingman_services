class Approach < ApplicationRecord
  # Direct associations

  belongs_to :opener

  belongs_to :venue

  belongs_to :user

  # Indirect associations

  has_one    :style,
             :through => :opener,
             :source => :styles

  # Validations

end
