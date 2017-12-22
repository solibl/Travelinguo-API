class Business < ApplicationRecord
	has_many :recommendations
	
	validates :name, :type, :address, :city, :country, {presence: true}
end
