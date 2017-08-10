class Question < ApplicationRecord
  belongs_to :id_users
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable
end
