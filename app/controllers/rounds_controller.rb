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
        n=0
        i=0
        round = Round.find_by(id: params[:id])
        holes = round.holes
        all_putts = holes.map do |hole|
            hole.putts
        end
        all_scores = holes.map do |hole|
            hole.score
        end
        all_girloc = holes.map do |hole|
           corArray = hole.girloc.split('-')
            girX = corArray[0].to_i - 17
            girY = (corArray[1].to_i - (n * 52))
            girY += 65
            # byebug
            n += 1
            [girX,girY]
        end
        
        all_firloc = holes.map do |hole|
            corArray = hole.fwloc.split('-')
            girX = corArray[0].to_i - 17
            girY = (corArray[1].to_i - (i * 52))
            girY += 64
            # byebug
            i += 1
            [girX,girY]

        end
        total_putts = all_putts.reduce(0){|sum, num| sum + num}
        total_scores = all_scores.reduce(0){|sum, num| sum+num}
        gir = round.gir_percentage
       
        render json: {putts: total_putts, score: total_scores, gir: gir, girArray: all_girloc, fwArray: all_firloc}

    end



    
end
