class User < ActiveRecord::Base

  has_many :clients
  
  has_secure_password

  validates :username, presence: true

end
