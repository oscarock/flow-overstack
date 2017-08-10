class Answer < ApplicationRecord
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable
end
