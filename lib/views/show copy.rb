class Show
  attr_accessor :arr_9cases # tableau à deux dimensions en 3x3

  def initialize(current_board)
    @arr_9cases = current_board
  end

  def display
    dsp_ligne_horizontale
    for i in (0...3)
      dsp_ligne_vide_separation
      dsp_ligne_de_jeu(arr_9cases[i][0], arr_9cases[i][1], arr_9cases[i][2])
      dsp_ligne_vide_separation
      dsp_ligne_horizontale
    end
  end

  def dsp_ligne_horizontale
    puts "-" * 25
  end

  def dsp_ligne_vide_separation
    puts "|       |       |       |"
  end

  def dsp_ligne_de_jeu(pos1, pos2, pos3) # Les parametres sont des string 1 [Values: ' ', 'x', 'o']
    puts "|   " + pos1 + "   |   " + pos2 + "   |   " + pos3 + "   |"
  end
end
