# frozen_string_literal: true

require_relative 'main'
puts 'Tочность: 10^-3 '
a = Integrate.new(0.001)
puts "Получено значение: #{a.calculate}, колличество итераций: #{a.getn}"

puts 'Tочность: 10^-4 '
a = Integrate.new(0.0001)
puts "Получено значение: #{a.calculate}, колличество итераций: #{a.getn}"
