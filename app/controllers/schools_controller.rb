class SchoolsController < ApplicationController
	respond_to :json

	def index
		respond_with School.all
	end

	def show
		respond_with School.find(params[:id])
	end

	def create
		respond_with School.create(school_params)
    #render json: school_params
    #render json: params[:people_count]
	end

	def update
		respond_with School.update(params[:id], params[:school])
	end

	def destroy
		respond_with School.destroy(params[:id])
	end

	private

  def school_params
    params.require(:school).permit(:title).tap { |p| p[:people_count] = params[:people_count] }
  end
end