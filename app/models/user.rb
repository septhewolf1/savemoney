class User < ApplicationRecord
  #has_many :incomes
  validates :email, presence: true, uniqueness:true #gli utenti devono essere univoci
  has_secure_password #verifico che le due password inserite nel form di registrazione siano uguali

	class << self
	    def from_omniauth(auth_hash)
	      user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
	      if auth_hash['info']['email']
	      	user.email = auth_hash['info']['email'] #ho messo name perchè la mail non riesco a prenderla e mi da errore. da vedere con davide
	      else
	      	user.email = auth_hash['info']['name']
	      end
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
