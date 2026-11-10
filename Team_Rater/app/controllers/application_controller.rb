class ApplicationController < ActionController::Base
  helper_method :current_user

  # Returns the logged-in Student or Admin, or nil.
  # Students and admins live in separate tables, so the session stores which one.
  def current_user
    return @current_user if defined?(@current_user)

    model = { "Student" => Student, "Admin" => Admin }[session[:user_type]]
    @current_user = model&.find_by(id: session[:user_id])
  end
end
