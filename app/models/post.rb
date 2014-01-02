class Post < ActiveRecord::Base
  attr_accessible :body, :link, :user_id

  belongs_to :user
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :votes, as: :votable, dependent: :destroy

  validates :body, presence: true
  validates :link, presence: true
  validates :user_id, presence: true
end
