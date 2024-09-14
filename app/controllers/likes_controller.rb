class LikesController < ApplicationController
    def create
        like = current_user.likes.create(sauna_id: params[:sauna_id]) #user_idとsauna_idの二つを代入
        redirect_back(fallback_location: root_path)
    end
    
    def destroy
        like = Like.find_by(sauna_id: params[:sauna_id], user_id: current_user.id)
        like.destroy
        redirect_back(fallback_location: root_path)
    end
end