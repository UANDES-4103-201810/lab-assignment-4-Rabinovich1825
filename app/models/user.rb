class User < ApplicationRecord
	has_many :user_tickets
	has_many :tickets, :through => :user_tickets

	validates :password, length: {minimum: 8, maximum: 12}
	validates :password, :format => {:with => /[a-zA-Z0-9_]*/}
	validates :email, :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/}
	validates :phone, length: {minimum: 9, maximum: 12}

end
