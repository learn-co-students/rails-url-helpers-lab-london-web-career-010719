class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def edit
    set_student
  end

  def update
    set_student
    @student.update(student_params)
    redirect_to @student
  end

  def student_params
    params.require(:student).permit(:active, :first_name, :last_name)
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end
end
