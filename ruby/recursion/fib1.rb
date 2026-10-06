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
