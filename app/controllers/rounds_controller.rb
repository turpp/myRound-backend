class RoundsController < ApplicationController
    def show
        round = Round.find_by(id: params[:id])
        render json: round, include: [:holes]
    end

    def create
        round = Round.new(num_of_holes: params[:num_of_holes])
        if round.valid?
            round.save
            render json: round, except: [:create_at, :updated_at]
        else
            render json: 'Invalid entry'
        end

    end

    def summary
        round = Round.find_by(id: params[:id])
        total_putts = round.count_putts
        total_scores = round.count_scores
        all_girloc = round.gir_dots
        all_firloc = round.fir_dots
        gir = round.gir_percentage.round(4)
        fir = round.fir_percentage.round(4)
        scramble = round.scramble_percentage.round(4)      
        render json: {putts: total_putts, score: total_scores, gir: gir, girArray: all_girloc, fwArray: all_firloc, fir: fir, scramble: scramble}
    end

end
