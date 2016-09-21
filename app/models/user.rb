class User < ApplicationRecord
	has_many :sentences
	has_many :votes
end
