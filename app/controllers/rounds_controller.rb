class RoundsController < ApplicationController
    def show
        round = Round.find_by(id: params[:id])
        render json: round, except: [:created_at, :updated_at]
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
        holes = round.holes
        all_putts = holes.map do |hole|
            hole.putts
        end
        all_scores = holes.map do |hole|
            hole.score
        end
        total_putts = all_putts.reduce(0){|sum, num| sum + num}
        total_scores = all_scores.reduce(0){|sum, num| sum+num}
        gir = round.gir_percentage
        render json: {putts: total_putts, score: total_scores, gir: gir}

    end



    
end
