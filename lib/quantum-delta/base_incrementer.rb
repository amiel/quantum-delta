module QuantumDelta
  class BaseIncrementer
    attr_reader :p, :n, :i
    def initialize(p, n, i = 0)
      @p, @n, @i = p, n, i
    end

    def all
      enumerator = enum_for(:each)
      enumerator.map(&:to_s)
    end

    def each
      while i < max_i
        yield self
        succ!
      end
    end

    def succ!
      @i += 1
    end

    def to_s
      "%0#{n}i" % i.to_s(base)
    end

    private

    def max_i
      base ** n
    end

    def base
      p - n + 1
    end

    def new(*_)
      self.class.new *_
    end

  end
end
