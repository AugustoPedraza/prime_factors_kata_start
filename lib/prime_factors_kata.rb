class PrimeFactorsKata
  # Your code goes here...
  def descompose(number)
    return [number] if is_prime? number

    first_multiplier = calculate_minimal_multiplier number

    ([first_multiplier] << descompose(number/first_multiplier)).flatten
  end

  private

  def is_prime? n
    calculate_minimal_multiplier(n).nil?
  end

  def calculate_minimal_multiplier(n)
    (2...n).find { |i| n%i == 0 }
  end
end

