class Hole < ApplicationRecord
  belongs_to :round

  def gir
    gir_strokes = self.par - 2
    strokes = self.score - self.putts
    if strokes <= gir_strokes 
      true
    else
      false
    end
  end
end
