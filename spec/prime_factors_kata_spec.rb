require 'spec_helper'

describe PrimeFactorsKata do
  subject {  }

  test_cases = [
    [2, [2]],
    [3, [3]],
    [4, [2,2]],
    [4, [2,2]],
    [924, [2, 2, 3, 7, 11]],
    [2**10_000, Array.new(10_000) { 2 }]
  ]

  test_cases.each do |n, expected|
    it "for #{n}" do
      expect(described_class.new.descompose(n)).to match(expected), "expected #{expected} to #{n}"
    end
  end
end

