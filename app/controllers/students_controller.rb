class StudentsController < ApplicationController
  def new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to root_path
    else    
      render :new
    end
  end


  # private

  # def student_params
  #   params.require(:student)
  #           .permit(:description, :name, :price, :delivery_charged,
  #                   :prefecture_id, :delivery_days, :sales_status, :delivery_way, 
  #                   :category_id,
  #                   :brand,
  #                   :size_id,
  #                   images_attributes: [:image, :id])
  #         .merge(user_id: current_user.id)
  # end

end
