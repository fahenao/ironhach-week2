class RandomPhrase
  attr_accessor :phrase_array

  def initialize
    @phrase_array = []
    add_phrases
  end

  def add_to_array(phrase)
    @phrase_array.push(phrase)
  end

  def add_phrases
    add_to_array("El que mucho abarca, poco aprieta.")
    add_to_array("No hay peor intento que el que no se hace.")
    add_to_array("Mas vale pajaro en mano, que mil volando.")
  end

  def random_phrase
    @phrase_array.sample
  end

  def print_array
    print @phrase_array
  end
end

# array = RandomPhrase.new

# puts array.show_phrase
#phrase_array.show_phrase
