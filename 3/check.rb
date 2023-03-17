# frozen_string_literal: true

def neibr(x, y)
  @x = x
  a = false
  a = true if y == (yield @x)
  a
end
