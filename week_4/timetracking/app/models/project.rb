class Project < ActiveRecord::Base
	has_many :time_entries
	validates :names, presence: true #validation

	def self.clean_old
		old_projects = Project.where("created_at < ?", Time.now - 1.week)
		old_projects.destroy_all
	end
end


