# frozen_string_literal: true

require_relative 'check'
include Math

10.times do |n|
	puts '                  Точка номер: ' + (n+1).to_s
	x=rand(100)/100.0
	y=rand(100)/100.0
	puts 'x: ' + x.to_s + ' y: ' + y.to_s
	if neibr(x, y) { |p| cos(p) }
	  puts 'Точка принадлежит y=cos(x)'
	else
	  puts 'Точка не принадлежит y=cos(x)'
	end

	lam = lambda { |p| sin(p**2) }

	if neibr(x, y, &lam)
	  puts 'Точка принадлежит y=sin(x^2)'
	else
	  puts 'Точка не принадлежит y=sin(x^2)'
	end
end

