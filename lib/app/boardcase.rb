class Boardcase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :case_pos, :case_value

  def initialize(pos, value)
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @case_pos = case_pos
    @case_value = case_value
  end
end
