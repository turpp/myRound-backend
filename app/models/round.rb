class Round < ApplicationRecord
    has_many :holes
    validates :num_of_holes, presence: true
    

    def gir_percentage
        holes = self.holes
        girs = holes.map do |hole|
            hole.gir
        end
        num_of_girs = girs.count {|gir| gir == true}
        
        num_of_girs.to_f / girs.count.to_f

    end

    def fir_percentage
        holes = self.holes
        firs = holes.map do |hole|
            if hole.par !=3
            hole.fir
            end
        end
        num_of_firs = firs.count{|fir| fir == true}
        num_of_firs.to_f/firs.count.to_f

    end
end
