module math.round;

final class Round {
public:

  // Methods //

  /* This method will yield the nearest number to the given value by flooring
   *  when less than a 0.5 increment and ceiling when greater than a 0.5
   *  increment.
   * x: The value to round.
   * Returns: A new value that represents the nearest whole number to the
   *  given value.
   */
  static double nearest(double x);

  /* This method will yield the next highest whole number to the given value.
   * x: The value to round.
   * Returns: A new value that represents the next highest whole number to the
   *  given value.
   */
  static double ceiling(double x);

  /* This method will yield the next lowest whole number to the given value.
   * x: The value to round.
   * Returns: A new value that represents the next lowest whole number to the
   *  given value.
   */
  static double floor(double x);
}
