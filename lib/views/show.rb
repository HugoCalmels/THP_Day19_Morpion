class Show
  # attr_accessor :show_board # tableau à deux dimensions en 3x3
  #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
  def show_board(board)
    board.display
  end

  def display
    dsp_ligne_horizontale
    dsp_ligne_vide_separation
    dsp_ligne_de_jeu(show_board[1], show_board.bc2, show_board.bc3)
    dsp_ligne_vide_separation
    dsp_ligne_horizontale
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
