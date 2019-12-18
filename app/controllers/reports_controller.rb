class ReportsController < ApplicationController
  def index
    @reports = Report.all.order("created_at DESC")
    @students = Student.all.order("created_at DESC")
    # @q = Report.ransack(params[:q])
    # @reports = @q.result(distinct: true)
  end

  def search
    @q = Report.search(search_params)
    @reports = @q.result(distinct: true)
  end

  def show
    @report = Report.find(params[:id])
    @user = current_user
    @student_all = Student.all
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
    @report = Report.find(params[:id])
    if @report.update(report_params) 
      redirect_to root_path
    else       
      redirect_to report_path(@report)
    end
  end

  def destroy
    @report = Report.find(params[:id])
    if @report.destroy
      redirect_to root_path
    else
      flash[:notice] = '問題が発生して削除できませんでした'
      render :show
    end
  end


  private

  def report_params
    params.require(:report)
            .permit(:title, :description, :homework,:day, :subject, :other, :student_id
                    )
          .merge(user_id: current_user.id)
  end

  # def search_params
  #   params.require(:q).permit(:title_cont)
  # end
end
