class Picture < ApplicationRecord
	belongs_to :trip
	belongs_to :user

	validates :reported, {presence: true}
end
