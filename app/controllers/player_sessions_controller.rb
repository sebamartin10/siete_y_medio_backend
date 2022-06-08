class PlayerSessionsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
        

        @player_session = PlayerSession.new(player_session_params)
        if @player_session.save
            render status:200, json:{player_session:@player_session}
        else
            render status:500, json:{message:@player_session.errors.details}
        end
        
    end
    private 
        def player_session_params
            params.require(:player_session).permit(:session_id,:player_id)
        end
end
