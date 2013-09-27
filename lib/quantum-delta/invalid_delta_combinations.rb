module QuantumDelta
  class InvalidDeltaCombinations
    attr_reader :period
    def initialize(period)
      @period = period
    end

    def invalid_combinations
      (0..(period - 1)).map { |n| combinations_for(n) }.flatten
    end

    private

    def combinations_for(n)
      incrementer = BaseIncrementer.new(period, n)
      incrementer.all.select { |string| sum_string(string) == period - n }
    end

    def sum_string(string)
      string.split(//).map(&:to_i).inject(0) { |a, e| a + e }
    end
  end
end
