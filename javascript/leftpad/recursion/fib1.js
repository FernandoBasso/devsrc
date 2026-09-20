/**
 * Returns the nth number of the Fibonacci sequence.
 *
 * This implementation includes the zeroth element as
 * in https://oeis.org/A000045.
 *
 * ASSUME: `n >= 0`.
 *
 * @param {number} n Which nth element of the sequence to return.
 * @returns {number} The nth element of the sequence.
 */
function fib(n) {
  if (n <= 1)
    return n;

  return fib(n - 1) + fib(n - 2);
}
