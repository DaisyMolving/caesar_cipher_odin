class Caesar

  
  def find_indices
	 alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
	 letters.each do |letter|
		indices = alphabet.index(letter)
		indices
	 end

  end
  def split(input_string)
	 letters = input_string.split("").to_a
	 letters
  end

end
