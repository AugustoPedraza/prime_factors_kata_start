class PrimeFactorsKata
  # Your code goes here...
  def descompose(number)
    multipliers = []

    current_number = number

    until is_prime?(current_number)
      multiplier = calculate_minimal_multiplier(current_number)
      multipliers << multiplier

      current_number = current_number/multiplier
    end

    multipliers << current_number
  end

  private

  def is_prime? n
    calculate_minimal_multiplier(n).nil?
  end

  def calculate_minimal_multiplier(n)
    (2...n).find { |i| n%i == 0 }
  end
end

