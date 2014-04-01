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
	end

	def update
		respond_with School.update(params[:id], params[:school])
	end

	def destroy
		respond_with School.destroy(params[:id])
	end

	private

  def school_params
    params.require(:school).permit(
    	:title, 
    	:students, 
    	:teachers, 
    	:averagesalary, 
    	:stud_grade_all, 
    	:stud_grade_k, 
    	:stud_grade_1, 
    	:stud_grade_2, 
    	:stud_grade_3, 
    	:stud_grade_4, 
    	:stud_grade_5, 
    	:stud_grade_6, 
    	:stud_grade_7, 
    	:stud_grade_8, 
    	:stud_grade_9, 
    	:stud_grade_10, 
    	:stud_grade_11, 
    	:stud_grade_12, 
    	:teach_grade_all, 
    	:teach_grade_k, 
    	:teach_grade_1, 
    	:teach_grade_2, 
    	:teach_grade_3, 
    	:teach_grade_4, 
    	:teach_grade_5, 
    	:teach_grade_6, 
    	:teach_grade_7, 
    	:teach_grade_8, 
    	:teach_grade_9, 
    	:teach_grade_10, 
    	:teach_grade_11, 
    	:teach_grade_12)
  end
end