class AdminController < ApplicationController
  before_filter :authenticate_user!

  def main
  end

  def users
    @users = User.all
    if params[:search].nil?
      @users = @users
      @users = @users.paginate(:page => params[:page], :per_page => 15)
    else
      @users = @users.where(["department_id = ?", params[:search]])
      @users = @users.paginate(:page => params[:page], :per_page => 1000)
      params[:search] = nil
    end
  end
end
