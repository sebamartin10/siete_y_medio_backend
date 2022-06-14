class PlayerHandsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
        @player_hand = PlayerHand.new(player_hand_params)
        if @player_hand.save
            render status:200, json:{player_hand:@player_hand}
        else
            render status:500, json:{message:@player_hand.errors.details}
        end
    end
    def update
        @player_hand = PlayerHand.find(params[:id])
        if @player_hand.update(player_hand_params)
            render status:200,json:{player_hand:@player_hand}
        else
            render status:400,json:{message:@player_hand.errors.details}
        end
    end
    def show
        @player_hand = PlayerHand.find(params[:id])
        render status:200, json:{player_hand: @player_hand,player_cards: @player_hand.player_cards}
    end
    private 
        def player_hand_params
            params.require(:player_hand).permit(:total_points,:player_id,:round_id)
        end
end
