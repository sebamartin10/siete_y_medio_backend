class RoundsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
        @round = Round.new(round_params)
        if @round.save
            render status:200, json:{round:@round}
        else
            render status:500, json:{message:@round.error.details}
        end
    end
    def index
        @rounds = Round.all
        render json:@rounds
    end
    def show
        @round = Round.where(session_id: params[:session_id])
        render json:@round
    end
    private 
        def round_params
            params.require(:round).permit(:bank,:is_current_round,:previous_turn,:current_turn,:next_turn,:session_id)
        end
end
