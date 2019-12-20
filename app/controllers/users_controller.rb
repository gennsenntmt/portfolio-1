class UsersController < ApplicationController
  def show
    @reports = Report.where(user_id: current_user.id).order("created_at DESC")
    @result = Report.where(user_id: current_user.id).length
    @user = current_user
  end
end
