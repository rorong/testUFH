class ApplicationController < ActionController::Base
  before_action :check_for_authentication
  before_action :authenticate_user!
  # before_action :logout_invalid_user, if: :password_controller?

  def check_for_authentication
    if current_user.present? && (current_user.roles.blank?)
      if action_name != 'thank_you'
        flash[:alert] = 'Invalid user role'
      end
      sign_out(current_user)
    end
  end

  # def logout_invalid_user
  #   if user_signed_in? && current_user.has_role?(:admin)
  #     sign_out(current_user)
  #   end
  # end

  # def password_controller?
  #   controller_name == "passwords"
  # end

  def after_sign_in_path_for(resource)
    # if resource.has_role?(:admin)
    #   flash[:alert] = "You are not authorized to perform this action!"
    #   sign_out(resource) && return
    # elsif resource.has_role?(:admin)
    #   users_path
    # end
    if resource.sign_in_count == 1
      welcome_page_path
    else
      root_path
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
  
  def dashboard
    render "dashboard/dashboard"
  end
end
