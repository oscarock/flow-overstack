class Question < ApplicationRecord
  #validations
  validates :title, presence: true
  validates :content, presence: true
  #relations
  belongs_to :user
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable

  def calculate_votes
    votes = self.votes.group(:direction).count
    if votes.empty?
      votes["arriba"] = 0
      votes["abajo"] = 0
    elsif votes["arriba"] == nil
      votes["arriba"] = 0
    elsif votes["abajo"] == nil
      votes["abajo"] = 0
    end
    votes["arriba"] - votes["abajo"]
  end
end
