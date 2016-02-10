require_relative './caesar'
describe Caesar do
  
  it 'should split a string input "hello" into letters and return an array' do
	 	string = Caesar.new
	 	result = string.split_input("hello")
		expect(result).to eq ["h", "e", "l", "l", "o"]
  end

  it 'should split a string input "goodbye" into letters and return an array' do
	 string = Caesar.new
	 result = string.split_input("goodbye")
	 expect(result).to eq %w(g o o d b y e)
  end

  it 'should replace the letters in letters_array with index positions from alphabet' do
	 string = Caesar.new
	 result = string.find_indices("good")
	 expect(result).to eq [6, 14, 14, 3]
  end

  it 'should replace "book" with [1, 14, 14, 10]' do
	 string = Caesar.new
	 result = string.find_indices("book")
	 expect(result).to eq [1, 14, 14, 10]
  end

  it 'should increase each index by amount of shift_number' do
	 string = Caesar.new
	 result = string.shift_indices("book", 2)
	 expect(result).to eq [3, 16, 16, 12]
  end

  it 'should increase each index of "good" by amount of shift_number' do
	 string = Caesar.new
	 result = string.shift_indices("good", 3)
	 expect(result).to eq [9, 17, 17, 6]
  end

  it 'should take the letters in alphabet at those new index positions' do
	 string = Caesar.new
	 result = string.convert_letters("good", 3)
	 expect(result).to eq ["j", "r", "r", "g"]
  end








end

