class RoundsController < ApplicationController
    def show
        round = Round.find_by(id: params[:id])
        render json: round
    end

    def create
        byebug
    end



    
end
