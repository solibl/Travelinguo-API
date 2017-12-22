class User < ApplicationRecord
	has_many :trips
	has_many :pictures
	has_many :videos
	has_many :reviews
	has_many :recommendations
	has_many :following_users, class_name: "Following", foreign_key: 'follower_id'
	has_many :followings, through: :following_users, source: 'followed'
	has_many :followed_users, class_name: "Following", foreign_key: 'followed_id'
	has_many :followers, through: :followed_users, source: 'follower'
end
