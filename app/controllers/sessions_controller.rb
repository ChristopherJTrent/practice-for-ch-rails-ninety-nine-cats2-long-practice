class SessionsController < ApplicationController
    #* SECTION user interface

    def new
        render :log_in
    end

    #* SECTION API

    def create
        un, pw = params[:user][:username], params[:user][:password]
        @user = User.find_by_credentials(un, pw)
        if user 
            log_in(user)
        else
            redirect_to new_session_url
        end
    end
    def destroy
        log_out
    end

    #* SECTION helpers
    def login_params
        params.require(:user).permit(:username, :password)
    end
end
