class CardsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @cards = Card.all
        render json:@cards
    end

    def create 
        if Card.where(symbol: params[:symbol],number: params[:number]).exists?
            render status: -1,json:{message:"The card already exist."}
        else
            @card = Card.new(card_params)
            if @card.save
                render status:200, json:{card:@card}
            else
                render status:500, json:{message:@card.error.details}
            end
        end
       
    end

    def destroy
        if !Card.exists?(params[:id])
            render status: 404, json:{message:"The card you are trying to delete doesnt exist."}
        else
            Card.delete(params[:id])
            render status: 200, json:{message:"Card with id: "+params[:id]+" was deleted."}
        end
    end 

    private 
        def card_params
            params.require(:card).permit(:symbol,:number,:points,:denomination)
        end
end
