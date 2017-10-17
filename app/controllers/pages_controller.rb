# controller of Pages class
class PagesController < ApplicationController
  before_filter :authenticate_user!

  def home
  end
end
