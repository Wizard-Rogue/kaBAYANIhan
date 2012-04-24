class User < ActiveRecord::Base
  attr_accessible :address, :email, :link, :mobile, :name, :photo, :provider, :uid, :username, :password, :emergencyContactInfo

def self.create_with_omniauth(auth)
  create! do |user|
    user.provider = auth["provider"]
    user.uid = auth["uid"]
    user.name = auth["info"]["name"]
    user.email = auth["info"]["email"]
#    user.link = auth["info"]["url"]["Facebook"]
  end
end

end
