require_relative './caesar'
describe Caesar do
  
  it 'should split a string input into letters and return an array' do
	 	string = Caesar.new
	 	result = string.split("hello")
		expect(result).to eq ["h", "e", "l", "l", "o"]
  end
end
