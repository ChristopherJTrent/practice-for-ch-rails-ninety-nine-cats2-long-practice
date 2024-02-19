class UsersController < ApplicationController
    #* SECTION user interface
    def new
        @user = User.new
        # TODO: write user.new view
        render :new
    end

    #* SECTION API
    def create
        user = User.new(user_params)
        if user.save
            #! redirects to '/'
            log_in(user)
        else 
            redirect_to new_user_url
        end
    end

    #* SECTION helpers
    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end
