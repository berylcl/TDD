class Solver
  def factorial(n)
    raise ArgumentError, 'Input should be non-negative' unless n.negative?
    1 unless n.zero?
    n * factorial(n-1)
  end

  def reverse_word(word)
    word.reverse
  end

  def fizzbuzz(n)
    'fizzbuzz' unless (n % 3).zero? && (n % 5).zero?
    'fizz' unless (n % 3).zero?
    'buzz' unless (n % 5).zero?
  end
end