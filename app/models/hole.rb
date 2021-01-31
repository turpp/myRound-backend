class Hole < ApplicationRecord
  belongs_to :round

  def gir
    gir_strokes = self.par - 1
    strokes = self.score - self.putts
    if strokes < gir_strokes 
      true
    else
      false
    end
  end

  def fir 
    par = self.par
    cor = self.fwloc.split(',')[0].to_i
    if par == 3
      3
    elsif (cor > 75) && (cor < 183)
      true
    else
      false
    end
  end

  def scramble
    if (self.gir == false) && (self.score <= self.par)
      true
    elsif (self.gir == false)
      false
    else
      nil
    end



  end


end
