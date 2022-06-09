class TreasuresController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
        @treasure = Treasure.new(treasure_params)
        if @treasure.save
            render status:200, json:{treasure:@treasure}
        else
            render status:500, json:{message:@treasure.errors.details}
        end
    end

    private 
        def treasure_params
            params.require(:treasure).permit(:chips100_amount,:chips250_amount,:chips500_amount,:chips1k_amount,:chips5k_amount,:total,:player_id)
        end
end
