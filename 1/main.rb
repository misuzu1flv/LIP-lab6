# frozen_string_literal: true

# class Integrate
class Integrate
  include Math
  def initialize(eps)
    @e = eps
    @n = 100
    @res = 0.0
    puts(@dx)
  end

  def func(xvar)
    Math.log(xvar) / xvar
  end

  def integrate
    dx = (2.0 - 1) / @n
    s = 0.0
    x = 1.0
    (1..@n).each do |_i|
      s += func(x) * dx
      x += dx
    end
    s
  end

  def calculate
    loop do
      @res = integrate
      break if (((Math.log(2)**2) / 2) - @res) < @e

      @n *= 10
    end
    @res
  end

  def getn
    @n
  end
end
