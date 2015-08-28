class Lexiconomitron

  def eat_t(string1)
    string1.delete "t""T"
  end

  def shazam(array)
    result = array.map {|word| word.reverse!}
    result2 = result.first+" "+result.pop
    result3 = result2.push []
    return result
  end
end
test = Lexiconomitron.new

array = ["hola","soy","felipe"]
puts test.shazam(array)