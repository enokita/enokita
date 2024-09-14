class SaunasController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    def index
      @saunas = Sauna.all
      search = params[:search]
      @saunas = @saunas.joins(:user).where("place LIKE ?", "%#{search}%") if search.present?
    end

    def new
        @sauna = Sauna.new
    end
    
    def create
        sauna = Sauna.new(sauna_params)
        sauna.user_id = current_user.id
        if sauna.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
    end

    def show
        @sauna = Sauna.find(params[:id])
    end

    def edit
        @sauna = Sauna.find(params[:id])
    end

    def update
        sauna = Sauna.find(params[:id])
        if sauna.update(sauna_params)
          redirect_to :action => "show", :id => sauna.id
        else
          redirect_to :action => "new"
        end
    end

    def destroy
        sauna = Sauna.find(params[:id])
        sauna.destroy
        redirect_to action: :index
    end

    def vlog
    end

    def blog
    end

    def login
    end
    
    private
      def sauna_params
        params.require(:sauna).permit(:name, :cost, :place, :overall)
    end
end

def post_params
  params.require(:suana).permit(:body,:lat,:lng)
end
