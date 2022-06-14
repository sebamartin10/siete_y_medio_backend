class PlayerBetsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
        @player_bet = PlayerBet.new(bet_params)
        if @player_bet.save
            render status:200, json:{player_bet:@player_bet}
        else
            render status:500, json:{message:@player_bet.error.details}
        end
    end
    private 
        def bet_params
            params.require(:player_bet).permit(:chips100_amount,:chips250_amount,:chips500_amount,:chips1k_amount,:chips5k_amount,:total,:player_id,:round_id)
        end
end
