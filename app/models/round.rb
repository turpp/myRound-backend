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
end
