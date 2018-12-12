class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email

#Need to create SESSIONS for active users and terminate on signout!


end
