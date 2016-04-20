class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :desc).limit(10)
	end

	def index
		@projects = Project.last_created_projects
	end 

	def show
		@my_project = Project.find(params[:id])
		
	end
end
