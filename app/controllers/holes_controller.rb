class HolesController < ApplicationController

    def index
        round = Round.find_by(id: params[:round_id])
        holes = round.holes
        render json: holes
    end

    def show
        hole = Hole.find_by(id: params[:id])
        render json: hole
    end

    def create
        byebug
    end

    def update
        byebug
    end

    def destroy
        byebugh
    end

end
