module QuantumDelta
  class Delta
    def self.generate(period)
      new(period).generate
    end

    attr_reader :period
    def initialize(period)
      @period = period
    end


    def generate
      invalid_combinations = InvalidDeltaCombinations.new(period).invalid_combinations


    end

  end
end
