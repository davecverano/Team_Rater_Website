class StudentloginController < ApplicationController
    def new
    end

    def create 
        @student = Student.find_by(email: params[:login][:email], password: params[:login][:password] )
        if @student.nil?
            
        else
            redirect_to root_path
        end
    end
end
