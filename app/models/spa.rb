class Spa < ApplicationRecord
  belongs_to :area
  has_many :service
  has_many :review
  attachment :spa_image
end
