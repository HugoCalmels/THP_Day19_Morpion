class Game
  # le Game est la partie elle meme !!!
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :status, :plateau, :joueurs, :count

  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    @player1 = Player.new
    @player2 = Player.new
    @joueurs = [@player1, @player2]
    @plateau = Board.new
    @status = "on_going"
    @current_player = @player1
    # puts @current_player
    @count = 0  # Nombre de coups
  end

  def invert
    @joueurs.each do |joueur|
      if (joueur != @current_player)
        @current_player = joueur
        break
      end
    end
  end

  def turn
    Show.new.show_board(@plateau)
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    puts "\nQuel est votre choix joueur #{@current_player.nom_player} ?"
    print " >>> "

    # la methode retourne le choix du joueur courant
    # Les valeurs correctes sont (0..8)
    @count += 1
    return gets.chomp
  end

  def last_display
    Show.new.show_board(@plateau)
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end
end
