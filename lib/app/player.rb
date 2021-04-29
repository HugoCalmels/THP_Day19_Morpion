class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  attr_accessor :nom_player, :symbole_player

  def initialize
    #TO DO : doit régler son nom et sa valeur
    puts "Veuillez saisir un nom de joueur : "
    print ">>> "
    @nom_player = gets.chomp
    puts "Veuillez saisir le symbole du joueur : "
    print ">>> "
    @symbole_player = gets.chomp
  end
end
