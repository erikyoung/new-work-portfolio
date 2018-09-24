class WorksController < ApplicationController
	def index
		@works = Work.all
	end

	def create
		Work.create(work_params)
		redirect_to root_path
	end

	def edit
	end

	private
	def work_params
		params.require(:work).permit(:name, :message, :email, :address)
	end

end
