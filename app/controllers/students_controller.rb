class StudentsController < ApplicationController
  def index
  end

  def show
    @student = Student.find(params[:id])
    @user = current_user
    
    @reports = Report.where(student_id: params[:id]).order("created_at DESC")
    @result = Report.where(student_id: params[:id]).length
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to root_path
    else    
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def student_params
    params.require(:student)
            .permit(:name, :grade, :english,
                    :math, :japanese, :science, :social_studies
                    )
  end

end
