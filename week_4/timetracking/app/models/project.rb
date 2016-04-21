class Project < ActiveRecord::Base
	has_many :time_entries
	validates :names, presence: true #validation
end


