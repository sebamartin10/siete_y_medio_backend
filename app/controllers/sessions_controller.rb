class SessionsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @sessions = Session.all
        render json:@sessions
    end
    def show
        @session = Session.find(params[:id])
        render status:200, json:{players_in_session: @session.players}
    end
    def create
        @session = Session.new(session_params)
            if @session.save
                render status:200, json:{session:@session}
            else
                render status:500, json:{message:@session.error.details}
            end
    end
    private 
        def session_params
            params.require(:session).permit(:maxAmountOfPlayers)
        end
end
