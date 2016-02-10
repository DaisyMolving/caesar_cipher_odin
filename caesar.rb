class Caesar

  def shift_indices(input_string, shift_number)
	 indices = find_indices(input_string)
	 new_indices = []
	 indices.each do |index|
		new_indices << index += shift_number
	 end
	 new_indices
  end
  
  def find_indices(input_string)
	 letters = split_input(input_string)
	 indices = []
	 alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
	 letters.each do |letter|
		indices << alphabet.index(letter)
	 end
		indices
  end
  
  def split_input(input_string)
	 letters = input_string.split("").to_a
	 letters
  end

end
