class Venue < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  belongs_to :style

  has_many   :approaches,
             :dependent => :destroy

  # Indirect associations

  has_many   :openers,
             :through => :approaches,
             :source => :opener

  has_many   :users,
             :through => :approaches,
             :source => :user

  # Validations

end
