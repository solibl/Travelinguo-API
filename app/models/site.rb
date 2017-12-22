class Site < ApplicationRecord
	has_many :recommendations

	validates :name, :latitude, :longitude, {presence: true}
end
