require_relative 'solver' # This assumes your Solver class is in a file named solver.rb
require 'rspec'

describe "Solver" do
  describe '#factorial : ' do
    it 'returns 1 for 0' do
      expect(Solver.factorial(0)).to eq(1)
    end

    it 'returns the factorial for positive integers' do
      expect(Solver.factorial(1)).to eq(1)
      expect(Solver.factorial(5)).to eq(120)
    end

    it 'raises an exception for negative integers' do
      expect { Solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'reverses the string' do
      expect(Solver.reverse('hello')).to eq('olleh')
      expect(Solver.reverse('world')).to eq('dlrow')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" when divisible by 3' do
      expect(Solver.fizzbuzz(3)).to eq('fizz')
      expect(Solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns "buzz" when divisible by 5' do
      expect(Solver.fizzbuzz(5)).to eq('buzz')
      expect(Solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when divisible by both 3 and 5' do
      expect(Solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(Solver.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'returns the number as a string for other cases' do
      expect(Solver.fizzbuzz(7)).to eq('7')
      expect(Solver.fizzbuzz(11)).to eq('11')
    end
  end
end