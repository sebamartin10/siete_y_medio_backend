class PlayersController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @players = Player.all
        render json:@players
    end
    def create 
      
        if Player.exists?(:name => params[:name])
            render status: 404,json:{message:"The player already exist."}
        else
            @player = Player.new(player_params)
            if @player.save
                render status:200, json:{player:@player}
            else
                render status:500, json:{message:@player.error.details}
            end
        end
       
    end

    private 
        def player_params
            params.require(:player).permit(:name)
        end
end
