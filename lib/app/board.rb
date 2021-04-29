class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :arr_9cases

  def initialize()
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    # Definition des cases
    @arr_9cases = [Boardcase.new(0, " "),
                   Boardcase.new(1, " "),
                   Boardcase.new(2, " "),
                   Boardcase.new(3, " "),
                   Boardcase.new(4, " "),
                   Boardcase.new(5, " "),
                   Boardcase.new(6, " "),
                   Boardcase.new(7, " "),
                   Boardcase.new(8, " ")]
  end

  def get_arr9
    return@arr_9cases
  end

  def dsp_board
    #@show1.display
  end

  def play_turn
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    # puts @arr_9cases[1].get_value  ==> ok
    if (((@arr_9cases[1].get_value == @arr_9cases[4].get_value) and (@arr_9cases[1].get_value == @arr_9cases[7].get_value) and (@arr_9cases[7].get_value != " ")) ||
        ((@arr_9cases[3].get_value == @arr_9cases[4].get_value) and (@arr_9cases[3].get_value == @arr_9cases[5].get_value) and (@arr_9cases[5].get_value != " ")) ||
        ((@arr_9cases[0].get_value == @arr_9cases[3].get_value) and (@arr_9cases[0].get_value == @arr_9cases[6].get_value) and (@arr_9cases[6].get_value != " ")) ||
        ((@arr_9cases[2].get_value == @arr_9cases[5].get_value) and (@arr_9cases[2].get_value == @arr_9cases[8].get_value) and (@arr_9cases[8].get_value != " ")) ||
        ((@arr_9cases[1].get_value == @arr_9cases[0].get_value) and (@arr_9cases[1].get_value == @arr_9cases[2].get_value) and (@arr_9cases[2].get_value != " ")) ||
        ((@arr_9cases[6].get_value == @arr_9cases[8].get_value) and (@arr_9cases[6].get_value == @arr_9cases[7].get_value) and (@arr_9cases[7].get_value != " ")) ||
        ((@arr_9cases[0].get_value == @arr_9cases[4].get_value) and (@arr_9cases[0].get_value == @arr_9cases[8].get_value) and (@arr_9cases[8].get_value != " ")) ||
        ((@arr_9cases[6].get_value == @arr_9cases[4].get_value) and (@arr_9cases[6].get_value == @arr_9cases[2].get_value) and (@arr_9cases[2].get_value != " ")))
      return true
    end
  end

  def info_arr9
    str = " "
    @arr_9cases.each do |bob|
      str = str + bob.get_value.to_s + " "
    end
    return str
  end
end
