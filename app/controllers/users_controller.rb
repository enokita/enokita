class UsersController < ApplicationController
    def show 
        @user = User.find(params[:id])
        @diary_entries = @user.diary_entries
      end
end
