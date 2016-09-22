class Story < ApplicationRecord
	has_many :sentences
	accepts_nested_attributes_for :sentences
end
