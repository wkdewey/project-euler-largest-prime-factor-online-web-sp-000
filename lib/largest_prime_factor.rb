# Enter your procedural solution here!
# @primes = [2, 3]

def is_prime?(number)
  puts "testing " + number.to_s
  prime = true
  if !(number == 2 || number == 3)
    squareRoot = Math.sqrt(number).floor
    squareRoot.downto(2).each { |i|
      if ((number % i) == 0) && is_prime?(i)
        prime = false
      end
    }
  end
  prime
end

def largest_prime_factor(number)
  squareRoot = Math.sqrt(number).floor
  squareRoot.downto(2).each { |i|
    if ((number % i) == 0) && is_prime?(i)
      return i
    end
  }
  return number
end
# @primes = [2, 3]
# puts @primes
# def put_primes
#   puts @primes
# end
# put_primes()