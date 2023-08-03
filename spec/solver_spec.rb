require_relative '../solver'

RSpec.describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    context 'when N is 0' do
      it 'returns 1' do
        expect(solver.factorial(0)).to eq(1)
      end
    end

    context 'when N is a positive integer' do
      it 'calculates the factorial correctly' do
        expect(solver.factorial(5)).to eq(120)
      end
    end

    context 'when N is a negative integer' do
      it 'raises an exception' do
        expect { solver.factorial(-3) }.to raise_error(ArgumentError)
      end
    end
  end

  describe '#reverse' do
    it 'reverses the word' do
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" when N is divisible by 3' do
      expect(solver.fizzbuzz(6)).to eq('fizz')
    end

    it 'returns "buzz" when N is divisible by 5' do
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when N is divisible by both 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns N as a string when N is not divisible by 3 or 5' do
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end
