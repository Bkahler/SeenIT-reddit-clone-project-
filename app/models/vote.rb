class Vote < ActiveRecord::Base
  attr_accessible :vote, :votable_id, :votable_type, :user_id

  belongs_to :votable, polymorphic: true
  belongs_to :user

  validates :user, presence: true
  validates :vote, presence: true
  validates :votable, presence: true

end
