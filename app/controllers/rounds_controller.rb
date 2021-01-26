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
            reder json: 'Invalid entry'
        end

    end



    
end
