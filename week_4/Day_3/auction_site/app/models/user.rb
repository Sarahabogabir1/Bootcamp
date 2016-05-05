class User < ActiveRecord::Base
	has_many :products #A reference to the product controller, thus plural.
	validates :email, presence: true, uniqueness:true	
end
