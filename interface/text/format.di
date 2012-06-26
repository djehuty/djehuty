module text.format;

/* This object contains methods that will produce a string representation
 *  of various pieces of data.
 */
final class Format {
public:
  /* Produces a string representing the given number using the given base.
   * value: The number to represent.
   *  base: The base to use in the representation.
   */
  static char[] integer(long value, uint base);

  /* Produces a string representing the given floating point number using the
   *   given base.
   * value: The number to represent.
   *  base: The base to use in the representation.
   */
  static char[] floatingPoint(double value, uint base);
}
