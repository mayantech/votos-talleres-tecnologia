module ApplicationHelper

  def admin?
  	User.find(current_user.id).admin 
  end

end
