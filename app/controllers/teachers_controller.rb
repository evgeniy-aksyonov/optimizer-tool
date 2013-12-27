class TeachersController < ApplicationController
	respond_to :json

	def index
		respond_with Teacher.all
	end

	def show
		respond_with Teacher.find(params[:id])
	end

	def create
		respond_with Teacher.create(teacher_params)
	end

	def update
		respond_with Teacher.update(params[:id], params[:teacher])
	end

	def destroy
		respond_with Teacher.destroy(params[:id])
	end

	private

  def teacher_params
    params.permit(:firstname, :school_id, :fulltime)
  end
end
