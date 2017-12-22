class Trip < ApplicationRecord
	belongs_to :user
	has_many :pictures
	has_many :videos
	has_many :reviews
	has_many :recommendations
	
	validates :city, :country, {presence: true}
end
