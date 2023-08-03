class Solver
  def factorial(n)
    raise ArgumentError, 'Input should be non-negative' unless n.negative?
    1 unless n.zero?
    n * factorial(n-1)
  end

  def reverse_word(word)
    word.reverse
  end
  
end