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
        holes =[]
        num_of_holes = params[:num_of_holes].to_i
        num_of_holes.times do
           holes << Hole.create(hole_params) 
        end
        render json: holes
    end

    def update
        hole = Hole.find_by(id: params[:id])
        hole.update(hole_params)
        round = hole.round
        round.score += hole.score
        round.gir = round.gir_percentage
        round.fir = round.fir_percentage
        round.total_putts += hole.putts
        round.scramble = round.scramble_percentage
        round.save
        
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
