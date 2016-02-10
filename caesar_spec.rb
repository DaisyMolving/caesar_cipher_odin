require_relative './caesar'
describe Caesar do
  
  it 'should split a string input "hello" into letters and return an array' do
	 	string = Caesar.new
	 	result = string.split("hello")
		expect(result).to eq ["h", "e", "l", "l", "o"]
  end

  it 'should split a string input "goodbye" into letters and return an array' do
	 string = Caesar.new
	 result = string.split("goodbye")
	 expect(result).to eq %w(g o o d b y e)
  end

  it 'should replace the letters in letters_array with index positions from alphabet' do
	 string = Caesar.new
	 result = string.split("good").find_indices
	 expect(result).to eq [6, 14, 14, 3]
  end
end

