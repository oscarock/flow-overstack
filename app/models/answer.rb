class Answer < ApplicationRecord
  validates :content, presence: true
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable
  belongs_to :question
end
