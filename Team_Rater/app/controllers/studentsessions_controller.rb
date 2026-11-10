class StudentsessionsController < ApplicationController
  def new
  end

  def create
    user = Student.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_type] = "Student"
      redirect_to students_path, notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "Logged out!"
  end
end
