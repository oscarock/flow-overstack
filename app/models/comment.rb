class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  has_many :votes, as: :voteable
end
