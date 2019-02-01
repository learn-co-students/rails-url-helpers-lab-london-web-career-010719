class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(params[:id])
  end

  def active
    @student = Student.find(params[:id])
    if @student.active == true
      @student.active = false
    else
      @student.active = true
    end
    @student.save
    redirect_to student_path(@student)
  end



 def student_params
    params.require(:student).permit(:active, :first_name, :last_name)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
