class User < ActiveRecord::Base
   attr_accessible :provider, :uid, :name


   has_many :votes, dependent: :destroy
   has_many :comments, dependent: :destroy
   has_many :post, dependent: :destroy

  def self.create_with_omniauth(auth)
     create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end
end