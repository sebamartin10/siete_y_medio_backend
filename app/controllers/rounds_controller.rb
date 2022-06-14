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
    def update
        @round = Round.find(params[:id])
        if @round.update(round_params)
            render status:200,json:{round:@round}
        else
            render status:400,json:{message:@round.errors.details}
        end
    end
    def index
        @rounds = Round.all
        render json:@rounds
    end
    def show
        @round = Round.find(params[:id])
        render status:200,json:{round:@round,player_bets:@round.player_bets,player_hands:@round.player_hands}
    end
    private 
        def round_params
            params.require(:round).permit(:bank,:is_current_round,:previous_turn,:current_turn,:next_turn,:session_id)
        end
end
