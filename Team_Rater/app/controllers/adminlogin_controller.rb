class AdminloginController < ApplicationController
    def new
    end

    def create 
        @admin = Admin.find_by(email: params[:admin_login][:email], password: params[:admin_login][:password] )
        if @admin.nil?
            
        else
            redirect_to root_path
        end
    end
end
