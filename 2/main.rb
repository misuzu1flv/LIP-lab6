# frozen_string_literal: true

class Integrate
  include Math
  def initialize(e)
    @e = e
    @n = 100
    @res = 0.0
    puts(@dx)
  end

  def func(x)
    Math.log(x) / x
  end

  def integrate
    dx = (2.0 - 1) / @n
    s = 0.0
    x = 1.0
    @n.times do |_i|
      s += func(x) * dx
      x += dx
    end
    s
  end

  def calculate
    until (((Math.log(2)**2) / 2) - @res) < @e
      @res = integrate
      @n *= 10
    end
    @res
  end

  def getn
    @n
  end
end
