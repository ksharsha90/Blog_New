class Subscriber < ApplicationRecord
	validates :f_name, :l_name, :email, :district,
			   presence: true
end
