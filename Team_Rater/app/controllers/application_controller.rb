class ApplicationController < ActionController::Base
    helper_method :current_user
    def current_user
      if session[:user_id]
        if Student.find(session[:user_id])
          @current_user = true
        elsif Admin.find(session[:user_id])
            @current_user = true
        end
      else
        @current_user = nil
      end
    end
  end