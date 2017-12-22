class Recommendation < ApplicationRecord
	belongs_to :user
	belongs_to :trip
	belongs_to :site
	belongs_to :business
	
	validates :review_of_rec, {presence: true}
end
