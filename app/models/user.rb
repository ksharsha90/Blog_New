class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email

#Need to create SESSIONS for active users and terminate on signout!

#Need to create ADMIN user - and restrict areas to only the ADMIN

end
