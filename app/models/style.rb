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

end
