class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :arr_9cases

  def initialize()
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    # Definition des cases
    @arr_9cases = [Boardcase.new([0][0], " "),
                   Boardcase.new([0][1], " "),
                   Boardcase.new([0][2], " "),
                   Boardcase.new([1][0], " "),
                   Boardcase.new([1][1], " "),
                   Boardcase.new([1][2], " "),
                   Boardcase.new([2][0], " "),
                   Boardcase.new([2][1], " "),
                   Boardcase.new([2][2], " ")]
  end

  def dsp_board
    @show1.display
  end

  def play_turn
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  end
end
