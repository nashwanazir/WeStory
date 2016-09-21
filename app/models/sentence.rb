class Sentence < ApplicationRecord
  belongs_to :story
  validates :sentence_number, uniqueness: { scope: :story_id }
  belongs_to :user
  has_many :votes
end
