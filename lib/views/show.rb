class Show
  # attr_accessor :show_board # tableau à deux dimensions en 3x3
  #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
  def show_board(board)
    @local_board = board
    display
  end

  def display
    #puts @local_board.arr_9cases[2].case_value
    dsp_ligne_horizontale
    dsp_ligne_vide_separation
    dsp_ligne_de_jeu(@local_board.arr_9cases[0].case_value, @local_board.arr_9cases[1].case_value, @local_board.arr_9cases[2].case_value)
    dsp_ligne_vide_separation
    dsp_ligne_horizontale
    dsp_ligne_vide_separation
    dsp_ligne_de_jeu(@local_board.arr_9cases[3].case_value, @local_board.arr_9cases[4].case_value, @local_board.arr_9cases[5].case_value)
    dsp_ligne_vide_separation
    dsp_ligne_horizontale
    dsp_ligne_vide_separation
    dsp_ligne_de_jeu(@local_board.arr_9cases[6].case_value, @local_board.arr_9cases[7].case_value, @local_board.arr_9cases[8].case_value)
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
