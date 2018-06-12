class User < ApplicationRecord
  # Direct associations

  has_many   :approaches,
             :dependent => :destroy

  # Indirect associations

  has_many   :venues,
             :through => :approaches,
             :source => :venue

  has_many   :openers,
             :through => :approaches,
             :source => :opener

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
