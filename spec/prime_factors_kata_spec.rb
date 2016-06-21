require 'spec_helper'

describe PrimeFactorsKata do
  subject { described_class.new.descompose(number) }

  context "when the input is 2" do

    let(:number) { 2 }

    it "returns the same input" do
      expect(subject).to match([2])
    end
  end

  context "when the input is 3" do
    let(:number) { 3 }

    it "returns the same input" do
      expect(subject).to match([3])
    end
  end

  context "when the input is 4" do
    let(:number) { 4 }

    it "returns its descomposition" do
      expect(subject).to match([2, 2])
    end
  end

  context "when the input is 6" do
    let(:number) { 6 }

    it "returns its descomposition" do
      expect(subject).to match([2, 3])
    end
  end

  context "when the input is 10" do
    let(:number) { 10 }

    it "returns its descomposition" do
      expect(subject).to match([2, 5])
    end
  end

  context "when the input is 924" do
    let(:number) { 924 }

    it "returns its descomposition" do
      expect(subject).to match([2, 2, 3, 7, 11])
    end
  end

  context "when the input is too big" do
    let(:number) { 2**10_000 }

    it "returns its descomposition" do
      expected_result = Array.new(10_000) { 2 }
      expect(subject).to match(expected_result)
    end
  end
end

