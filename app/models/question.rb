class Question < ApplicationRecord
  #validations
  validates :title, presence: true
  validates :content, presence: true
  #relations
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable

end
