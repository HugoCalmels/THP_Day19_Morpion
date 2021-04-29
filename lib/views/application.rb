class Application
  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    message_accueil
    choix = ""
    partie = Game.new
    #puts partie.plateau.get_arr9[1].case_value
    while partie.status == "on_going"
      # Affichage du plateau
      choix = partie.turn
      choix_i = choix.to_i
      # Prise en compte du Choix du joueur
      if choix_i >= 0 and choix_i < 9
        partie.plateau.arr_9cases[choix_i].case_value = partie.current_player.get_sym
      end
      # Le current player devient l'autre player
      partie.invert
      if partie.plateau.victory?
        break
      end
      if partie.count > 8
        partie.status = "closed"
      end
    end
    partie.invert
    partie.last_display

    if partie.plateau.victory?
      puts "\nBravo l'artiste !"
      puts " le joueur #{partie.current_player.nom_player} est déclaré vainqueur."
    else
      puts "\nMacth nul !"
    end
  end

  def message_accueil
    puts "-------------------------------------------------"
    puts "   Aujourd'hui ..                                "
    puts "           .. c'est MORPION .. YESSSSSSS         "
    puts "-------------------------------------------------"
  end
end
