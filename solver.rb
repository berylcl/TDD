class Solver
  def factorial(num)
    raise ArgumentError, 'Input should be non-negative' unless num >= 0

    return 1 if num.zero?

    (1..num).reduce(1, :*)
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    return 'fizzbuzz' if (num % 3).zero? && (num % 5).zero?
    return 'fizz' if (num % 3).zero?
    return 'buzz' if (num % 5).zero?

    num.to_s
  end
end
