module geometry.point;

/* Represents a single point in a 2d space.
 *
 */
final class Point {
public:
  /* Constructs a point representing the origin (0, 0)
   *
   */
  this();

  /* Constructs a point representing the given location.
   *
   */
  this(double x, double y);

  // Properties //

  /* The point's x coordinate.
   *
   */
  double x();

  /* The point's y coordinate.
   *
   */
  double y();
}
