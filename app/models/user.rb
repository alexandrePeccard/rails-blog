class User < ApplicationRecord
	has_many :books
	has_many :articles
	has_many :comments
	has_many :likes
end
