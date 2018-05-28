module PagesHelper

  def path_for_user(user)
    if user.nil?
      root_path
    elsif user.admin?
      admin_path
    else
      index_path
    end
  end
end
