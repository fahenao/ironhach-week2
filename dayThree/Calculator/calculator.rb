class StringCalculator

	def add(nums_string)
		return 0 if nums_string.length == 0
		return nums_string.to_i if nums_string.length == 1

    numbers = nums_string.split(",").map(to)
    numbers.each {|i| i.to_i "," }
    numbers.each {|i| i.reduce(:+)}
		nums_string[0].to_i + nums_string[2].to_i

	end

  def multiply(nums_string)
    nums_string.delete("0") if nums_string.include? "0" 
    nums_string[0].to_i * nums_string[1].to_i
  end
end
