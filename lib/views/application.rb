class Application
  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    message_accueil
    partie = Game.new
    while partie.status == "on_going"
      # Affichage du plateau
      Show.new.show_board(partie.plateau)
      partie.turn
      input = gets.chomp
    end
  end

  def message_accueil
    puts "-------------------------------------------------"
    puts "   Aujourd'hui ..                                "
    puts "           .. c'est MORPION .. YESSSSSSS         "
    puts "-------------------------------------------------"
  end
end
