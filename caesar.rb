class Caesar

  def translate_to_string(input_string, shift_number)
	 new_letters = convert_letters(input_string, shift_number)
	 translation = new_letters.join
	 translation
  end
  
  def convert_letters(input_string, shift_number)
	 new_indices = shift_indices(input_string, shift_number)
	 new_letters = []
	 alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
	 new_indices.each do |new_index|
		unless new_index == " " 
		  new_index = alphabet[new_index]
		end
		new_letters << new_index
	 end
	 new_letters
  end
  def shift_indices(input_string, shift_number)
	 indices = find_indices(input_string)
	 new_indices = []
	 indices.each do |index|
		unless index == " " 
		  index += shift_number
		end
		new_indices << index
	 end
	 new_indices
  end
  
  def find_indices(input_string)
	 letters = split_input(input_string)
	 indices = []
	 alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
	 letters.each do |letter|
		unless letter == " "
		  letter = alphabet.index(letter)
		end
		indices << letter
	 end
		indices
  end
  
  def split_input(input_string)
	 letters = input_string.split("").to_a
	 letters
  end

end
