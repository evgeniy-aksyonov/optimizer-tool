class StudentsController < ApplicationController
	respond_to :json

	def index
		respond_with Student.all
	end

	def show
		respond_with Student.find(params[:id])
	end

	def create
		respond_with Student.create(student_params)
	end

	def update
		respond_with Student.update(params[:id], params[:student])
	end

	def destroy
		respond_with Student.destroy(params[:id])
	end

	private

  def student_params
    params.require(:student).permit(:firstname, :school_id, :grade)
  end
end
