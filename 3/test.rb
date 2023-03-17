# frozen_string_literal: true

require_relative 'check'
include Math

RSpec.describe do
  it 'x=0 y=1 for 1st' do
    expect(neibr(0, 1) { |p| cos(p) }).to be(true)
  end
  it 'x=0 y=0 for 1st' do
    expect(neibr(0, 0) { |p| cos(p) }).to be(false)
  end
  it 'x=0 y=1 for 2nd' do
    expect(neibr(0, 1) { |p| sin(p**2) }).to be(false)
  end
  it 'x=0 y=0 for 2nd' do
    expect(neibr(0, 0) { |p| sin(p**2) }).to be(true)
  end
end
