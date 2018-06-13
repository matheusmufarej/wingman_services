class Style < ApplicationRecord
  # Direct associations

  has_many   :openers,
             :foreign_key => "styles_id",
             :dependent => :destroy

  has_many   :venues,
             :dependent => :destroy

  # Indirect associations

  has_many   :approaches,
             :through => :openers,
             :source => :approaches

  # Validations
  validates :title, presence: true
  validates :title, uniqueness: true
  
  validates :description, presence: true



end
