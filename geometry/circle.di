module geometry.circle;

import geometry.rectangle;
import geometry.point;
import geometry.line;

/* Represents a uniform curve around a single point at a specified radius.
 *
 */
final class Circle {
public:
  /* Constructs a new circle as a unit square at the origin with a size of 1 unit by 1 unit.
   *
   */
  this();

  /* Constructs a new circle with the given center point and the given radius.
   *
   */
  this(double x, double y, double radius);

  // Properties //

  /* The center point's x coordinate.
   *
   */
  double x();

  /* The center point's y coordinate.
   *
   */
  double y();

  /* The radius of the circle.
   *
   */
  double radius();

  // Methods //

  /* Determines whether or not the given Rectangle intersects this circle.
   * Returns: true when Rectangle b intersects.
   */
  bool intersects(Rectangle b);

  /* Determines whether or not the given Circle intersects this one.
   * Returns: true when Circle b intersects.
   */
  bool intersects(Circle b);

  /* Determines whether or not the given Line intersects this circle.
   * Returns: true when Line b intersects.
   */
  bool intersects(Line b);

  /* Determines whether or not the given Point is on the boundary of the
   *  circle.
   * Returns: true when Point b is on an edge of the circle.
   */
  bool intersects(Point b);

  /* Determines whether or not the given Rectangle is contained within the
   *  circle.
   * Returns: true when Rectangle b is within or touching the bounds of the
   *  circle.
   */
  bool contains(Rectangle b);

  /* Determines whether or not the given Circle is contained within the
   *  circle.
   * Returns: true when Circle b is within or touching the bounds of the
   *  circle.
   */
  bool contains(Circle b);

  /* Determines whether or not the given Line is contained within the
   *  circle.
   * Returns: true when Line b is within or touching the bounds of the
   *  circle.
   */
  bool contains(Line b);

  /* Determines whether or not the given Point is inside this circle.
   * Returns: true when Point b is within or touching the bounds of the
   *  circle.
   */
  bool contains(Point b);

  /* Computes the shape that would result from the given Line being
   *  clipped by this circle.
   * Returns: The number of intersection points.
   */
  int clip(Line b, Point[2] points);

  /* Computes the shape that would result from the given Rectangle being
   *  clipped by this circle.
   * Returns: The number of intersection points.
   */
  int clip(Rectangle b, Point[4] points);

  /* Computes the shape that would result from the given Circle being
   *  clipped by this circle.
   * Returns: The number of intersection points.
   */
  int clip(Circle b, Point[4] points);
}
