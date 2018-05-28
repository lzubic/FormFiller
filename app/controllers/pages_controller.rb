class PagesController < ApplicationController
  include PagesHelper

  def home
    if current_user
      redirect_to path_for_user(current_user)
    else
      redirect_to login_path
    end
  end

  def admin
  end

  def index
  end
end
