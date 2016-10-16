class Sentence < ApplicationRecord
  belongs_to :story
  validates :sentence_number, uniqueness: { scope: :story_id }
  validates :body, length: { maximum: 500 }
  belongs_to :user
  has_many :votes
end
