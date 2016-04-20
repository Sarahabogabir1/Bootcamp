class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :desc).limit(10)
	end

	def index
		@projects = Project.last_created_projects
	end 

	def show #name of the view
		@my_project = Project.find_by(params[:id])
		 # get '/projects/:id', to: 'projects#show'
		 unless @my_project
		render "no_projects_found"
	end
end
