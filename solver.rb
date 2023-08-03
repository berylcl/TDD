class Solver
  def factorial(num)
    raise ArgumentError, 'Input should be non-negative' unless num.negative?

    1 unless num.zero?
    num * factorial(num-1)
  end

  def reverse_word(word)
    word.reverse
  end

  def fizzbuzz(num)
    'fizzbuzz' unless (num % 3).zero? && (num % 5).zero?
    'fizz' unless (num % 3).zero?
    'buzz' unless (num % 5).zero?
  end
end