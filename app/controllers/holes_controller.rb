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
        # byebug
        num_of_holes = params[:num_of_holes].to_i
        # byebug
        num_of_holes.times do
            Hole.create(hole_params) 

        end
        
        
        # hole=Hole.new(round_id: params[:round_id].to_i)
        # if hole.valid?
        #     hole.save
        # else
        #     'not valid'
        # end
    end

    def update
        byebug
    end

    def destroy
        byebug
    end

    private
    def hole_params
       params.require(:hole).permit(:round_id)
    end

end
