class Tournament < ActiveRecord::Base
	has_many :tournaments
	has_many :players, through:registration

end
