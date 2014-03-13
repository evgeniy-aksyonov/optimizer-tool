class StudentsByGradeController < ApplicationController
	respond_to :json

	def index
		respond_with StudentsByGrade.all
	end

	def show
		respond_with StudentsByGrade.find(params[:id])
	end

	def create
		respond_with StudentsByGrade.create(school_params)
	end

	def update
		respond_with StudentsByGrade.update(params[:id], params[:school])
	end

	def destroy
		respond_with StudentsByGrade.destroy(params[:id])
	end

	private

  def school_params
    params.require(:students_by_grade).permit(:title, :students, :grade_9)
  end
end
