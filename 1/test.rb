# frozen_string_literal: true

require_relative 'main'

RSpec.describe do
  it 'Check if the precision works' do
    a = Integrate.new(0.001)
    puts "Expected: #{(Math.log(2)**2) / 2}"
    puts "Result: #{a.calculate}"
    expect(((Math.log(2)**2) / 2) - a.calculate).to be < 0.001
  end
end
