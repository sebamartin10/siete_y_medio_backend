class PlayerCardsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
        @player_card = PlayerCard.new(player_card_params)
        if @player_card.save
            render status:200, json:{player_card:@player_card} 
        else
            render status:500, json:{message:@player_card.error.details}
        end
    end
    def show
        @player_card = PlayerCard.find(params[:id])
        render status:200,json:{player_card:@player_card,card:@player_card.card}
    end
    private 
        def player_card_params
            params.require(:player_card).permit(:is_card_visible,:player_hand_id,:card_id)
        end
end
