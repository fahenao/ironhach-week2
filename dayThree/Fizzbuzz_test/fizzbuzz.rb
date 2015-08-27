class FizzBuzz 

  def convert(num_to_convert)
    if num_to_convert % 15 == 0
      return "fizzbuzz"
    end
    if num_to_convert % 3 == 0 
      return "fizz" 
    end
    if num_to_convert % 5 == 0
      return "buzz"
    end
  end
end