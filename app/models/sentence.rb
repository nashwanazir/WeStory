class Sentence < ApplicationRecord
    belongs_to :story
    belongs_to :user
    has_many :votes
    validates :sentence_number, uniqueness: true 
end
