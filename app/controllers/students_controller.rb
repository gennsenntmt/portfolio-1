class StudentsController < ApplicationController
  def index
  end

  def show
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
          # .merge(user_id: current_user.id)
  end

end
