# controller of Admin class
class AdminController < ApplicationController
  before_filter :authenticate_user!

  def main
  end

  def users
    if params[:search].nil?
      @users = User.paginate(:page => params[:page], :per_page => 15)
    else
      @users = User.where(["department_id = ?", params[:search]]).paginate(:page => params[:page], :per_page => 1000)
      params[:search] = nil
    end
  end
end
