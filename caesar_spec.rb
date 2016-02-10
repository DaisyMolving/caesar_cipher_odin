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
end

