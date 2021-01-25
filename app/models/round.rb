class Round < ApplicationRecord
    has_many :holes
    validates :num_of_holes, presence: true
    
end
