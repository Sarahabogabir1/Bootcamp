class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :desc).limit(10)
	end

	def index
		@projects = Project.last_created_projects
	end 

	def show #name of the view
		@my_project = Project.find_by(params[:id])
		unless @my_project
		render "no_projects_found"
		end
	end

	def new
		@my_project = Project.new
		render 'new'
	end 

	def create
		@my_project = Project.new(
		:name => params[:project][:name],
		:description => params[:project][:description])
		@my_project.save

		redirect_to "/projects/#{@my_project.id}"
		#redirects user once they submits
	end 
end
