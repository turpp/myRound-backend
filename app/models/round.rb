class Round < ApplicationRecord
    has_many :holes
    validates :num_of_holes, presence: true
    
    def gir_percentage
        holes = self.holes.filter{|hole| hole.score != nil}
        girs = holes.map do |hole|
            hole.gir
        end
        num_of_girs = girs.count {|gir| gir == true}
        num_of_girs.to_f / girs.count.to_f
    end

    def fir_percentage
        holes = self.holes.filter{|hole| hole.score != nil}
        chances = holes.filter do |hole|
            hole.par != 3
        end
        firs = chances.map do |hole|
            hole.fir
        end
        num_of_firs = firs.count{|fir| fir == true}
        num_of_firs.to_f/firs.count.to_f
    end

    def scramble_percentage
        holes = self.holes.filter{|hole| hole.score != nil}
        chances = holes.map do |hole|
            hole.scramble
        end
        scrambles = chances.filter{|x| x != nil }
        num_of_scrambles = scrambles.count{|scramble| scramble == true}
        num_of_scrambles.to_f/scrambles.count.to_f
    end

    def count_putts
        holes = self.holes
        all_putts = holes.map do |hole|
            hole.putts
        end
        all_putts.reduce(0){|sum, num| sum + num}
    end

    def count_scores
        holes = self.holes
        all_scores = holes.map do |hole|
            hole.score
        end
        all_scores.reduce(0){|sum, num| sum+num}
    end

    def gir_dots
        holes = self.holes
        all_girloc = holes.map do |hole|
            corArray = hole.girloc.split(',')
            [corArray[0].to_i, corArray[1].to_i]
        end
        all_girloc
    end

    def fir_dots
        holes = self.holes
        all_firloc = holes.map do |hole|
            corArray = hole.fwloc.split(',')
            [corArray[0].to_i, corArray[1].to_i]
        end
        all_firloc
    end

    def keep_current(hole)
        self.score += hole.score
        self.gir = self.gir_percentage
        self.fir = self.fir_percentage
        self.total_putts += hole.putts
        self.scramble = self.scramble_percentage
        self.save

    end

    

end
