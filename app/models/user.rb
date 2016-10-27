class User < ApplicationRecord
  validates :email, presence: true, uniqueness:true #gli utenti devono essere univoci
  has_secure_password #verifico che le due password inserite nel form di registrazione siano uguali

	class << self
	    def from_omniauth(auth_hash)
	      user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
	      user.email = auth_hash['info']['name']
	      user.password = "ppppp"
	      user.name = auth_hash['info']['name']
	      user.location = auth_hash['info']['location']
	      user.image_url = auth_hash['info']['image']
	      user.url = auth_hash['info']['urls'][user.provider.capitalize]
	      user.save!
	      user
	    end
	end
end
