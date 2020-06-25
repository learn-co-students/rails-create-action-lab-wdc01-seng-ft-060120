class StudentsController < ApplicationController
  before_action :find_student, only: [:show]
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    
  end

  def create
    @student = Student.create(
      {
        first_name: params[:first_name],
        last_name: params[:last_name]
      }
    ) 
  end

  private#--------------
  def student_params
    params.require(:student).permit(:first_name,:last_name)
  end
  def find_student
    @student = Student.find(params[:id])
  end


end
