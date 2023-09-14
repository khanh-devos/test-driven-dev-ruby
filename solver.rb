
class Solver
  def self.factorial(n)
    raise ArgumentError, 'Negative integer not allowed' if n < 0
    return 1 if n == 0
  
    (1..n).reduce(:*)
  end
  
  def self.reverse(word)
    word.reverse
  end
  
  def self.fizzbuzz(n)
    return 'fizzbuzz' if (n % 3).zero? && (n % 5).zero?
    return 'fizz' if (n % 3).zero?
    return 'buzz' if (n % 5).zero?
  
    n.to_s
  end
end
  