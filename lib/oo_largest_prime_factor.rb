# Enter your object-oriented solution here!
class LargestPrimeFactor
  @@primes = [2, 3]
  def initialize(number)
    @number = number
  end

  def self.is_prime?(number)
    prime = true
    if !(@@primes.include?(number))
      squareRoot = Math.sqrt(number).floor
      for i in 2..squareRoot
        if ((number % i) == 0) && is_prime?(i)
          prime = false
        end
      end
    end
    if prime == true && !(@@primes.include?(number))
      @@primes << number
    end
    prime
  end

  def number
    squareRoot = Math.sqrt(@number).floor
    squareRoot.downto(2).each { |i|
      if ((@number % i) == 0) && LargestPrimeFactor.is_prime?(i)
        return i
      end
    }
    return @number
  end
end