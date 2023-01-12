class SessionsController < ApplicationController
    require 'bcrypt'
    skip_before_action :verify_authenticity_token, only: [:create, :destroy]

    def create
        @user = User.authenticate(params[:email], params[:password])
        if @user 
            session[:user_id] = @user.id
            render json: @user
        else
            render json: {errors: "Invalid email or password"}
        end
    end 
    
    def destroy
        session.delete :user_id
        head :no_content
    end
end
