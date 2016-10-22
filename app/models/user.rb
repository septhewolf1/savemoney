class User < ApplicationRecord
  validates :email, presence: true, uniqueness:true #gli utenti devono essere univoci
  has_secure_password #verifico che le due password inserite nel form di registrazione siano uguali
end
