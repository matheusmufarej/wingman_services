require 'open-uri'
class Venue < ApplicationRecord
  before_validation :geocode_address

  def geocode_address
    if self.address.present?
      url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{URI.encode(self.address)}"

      raw_data = open(url).read

      parsed_data = JSON.parse(raw_data)

      if parsed_data["results"].present?
        self.address_latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]

        self.address_longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

        self.address_formatted_address = parsed_data["results"][0]["formatted_address"]
      end
    end
  end
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

  validates :name, presence: true
    validates :name, uniqueness: true

  validates :address, presence: true
    validates :address, uniqueness: true

  validates :description, presence: true

  #validates :website, presence: true
    #validates :website, uniqueness: true
    #validates :website, url: true


end
