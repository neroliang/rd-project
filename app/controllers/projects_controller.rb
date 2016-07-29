class ProjectsController < ApplicationController
	before_action :find_project, only: [:show, :update, :destroy, :edit]

	def index
		@projects = Project.all
	end

	def show
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		@project.user = current_user
		if @project.save
			flash[:success] =  "Your #{@project.title} has been saved"
			redirect_to projects_url
		else
			render :new
		end
	end

	def update
		if @project.update(project_params)
			flash[:success] =  "Your #{@project.title} has been updated"
			redirect_to projects_url
		else
			flash[:error] =  "Unable to update #{@project.title}"
			render :edit
		end
	end

	def destroy
		if @project.destroy
			flash[:success] = "Your #{@project.title} has been deleted"
		else
			flash[:error] = "Unable to delete it"
		end
		redirect_to projects_url
	end	

	private
	def find_project		
		@project = Project.find params[:id]
	end

	def project_params
		params.require(:project).permit(:title, :description)
	end
end
