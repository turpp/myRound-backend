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
        holes =[]
        num_of_holes = params[:num_of_holes].to_i
        # byebug
        num_of_holes.times do
           holes << Hole.create(hole_params) 
        end
        render json: holes
        
        
        
        # hole=Hole.new(round_id: params[:round_id].to_i)
        # if hole.valid?
        #     hole.save
        # else
        #     'not valid'
        # end
    end

    def update
        # byebug
        hole = Hole.find_by(id: params[:id])
        hole.update(hole_params)
        render json: hole
    end

    def destroy
        byebug
    end

    private
    def hole_params
       params.require(:hole).permit(:round_id, :putts, :score, :par, :girloc, :fwloc)
    end

end
