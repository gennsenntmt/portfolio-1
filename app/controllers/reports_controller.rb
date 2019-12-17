class ReportsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @report = Report.new
    @user = current_user
    @student_all = Student.all
  end

  def create
    @report = Report.new(report_params)
    if @report.save
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

  def report_params
    params.require(:report)
            .permit(:title, :description, :homework,
                    :day, :subject, :other, :student_id
                    )
          .merge(user_id: current_user.id)
  end
end
