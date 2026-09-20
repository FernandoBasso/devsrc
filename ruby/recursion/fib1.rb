require 'rspec'

RSpec.describe 'fib' do
  it 'fib of the zeroth element' do
    expect(fib(0)).to eq(0)
  end

  it 'fib of the first element' do
    expect(fib(1)).to eq(1)
  end

  it 'fib of the second element' do
    expect(fib(2)).to eq(1)
  end

  it 'fib of the third element' do
    expect(fib(3)).to eq(2)
  end

  it 'fib of the fourth element' do
    expect(fib(4)).to eq(3)
  end

  it 'fib of the fifth element' do
    expect(fib(5)).to eq(5)
  end

  it 'fib of the sixth element' do
    expect(fib(6)).to eq(8)
  end

  it 'fib of the eleventh element' do
    expect(fib(11)).to eq(89)
  end

  it 'fib of the twienth element' do
    expect(fib(20)).to eq(6765)
  end

  ##
  # Takes about 10 seconds on my machine.
  #
  # it 'fib of the fortthent element' do
  #   expect(fib(40)).to eq(102334155)
  # end
end

##
# Returns the nth number of the Fibonacci sequence.
#
# This implementation includes the zeroth element as
# in https://oeis.org/A000045.
#
# ASSUME: `n >= 0`.
#
def fib(n)
  return n if n <= 1

  return fib(n - 1) + fib(n - 2)
end
