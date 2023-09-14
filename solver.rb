class Solver
    def self.factorial(num)
      raise ArgumentError, 'Negative integer not allowed' if num < 0
      return 1 if num == 0
  
      result = 1
      (1..num).each do |i|
        result *= i
      end
      result
    end
  
    def self.reverse(word)
      word.reverse
    end
  
    def self.fizzbuzz(num)
      result = ''
  
      result += 'fizz' if (num % 3).zero?
      result += 'buzz' if (num % 5).zero?
  
      result.empty? ? num.to_s : result
    end
  end
  