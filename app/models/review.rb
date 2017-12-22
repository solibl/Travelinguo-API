class Review < ApplicationRecord
	belongs_to :user
	belongs_to :trip
	
	validates :message, :rating, {presence: true}
end
