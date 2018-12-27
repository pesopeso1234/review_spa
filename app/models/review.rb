class Review < ApplicationRecord
	belongs_to :spa
	belongs_to :user
	belongs_to :service

	validates :bathing_date, presence: true
	validates :review_all_rating, presence: true
	validates :review_bath_rating, presence: true
	validates :review_meal_rating, presence: true
	validates :review_other_rating, presence: true
	validates :spa_impression, presence: true, length: { maximum: 400 }
	validates :service_id, presence: true
	validates :service_impression, presence: true, length: { maximum: 400 }
end


