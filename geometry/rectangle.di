module geometry.rectangle;

import geometry.circle;
import geometry.point;
import geometry.line;

/* Represents a quadrilateral polygon where each internal angle is 90 degrees.
 *
 */
final class Rectangle {
  /* Constructs a new rectangle as a unit square at the origin with a size of 1 unit by 1 unit.
   *
   */
  this();

  /* Constructs a new rectangle with the given center point and the given dimensions.
   *
   */
  this(double x, double y, double width, double height);

  // Properties //

  /* The center point's x coordinate.
   *
   */
  double x();

  /* The center point's y coordinate.
   *
   */
  double y();

  /* The width of the rectangle.
   *
   */
  double width();

  /* The height of the rectangle.
   *
   */
  double height();

  // Methods //

  /* Determines whether or not the given Rectangle intersects this one.
   * Returns: true when Rectangle b intersects.
   */
  bool intersects(Rectangle b);

  /* Determines whether or not the given Circle intersects this rectangle.
   * Returns: true when Circle b intersects.
   */
  bool intersects(Circle b);

  /* Determines whether or not the given Line intersects this rectangle.
   * Returns: true when Line b intersects.
   */
  bool intersects(Line b);

  /* Determines whether or not the given Point is on the boundary of the
   *  rectangle.
   * Returns: true when Point b is on an edge of the rectangle.
   */
  bool intersects(Point b);

  /* Determines whether or not the given Rectangle is contained within the
   *  rectangle.
   * Returns: true when Rectangle b is within or touching the bounds of the
   *  rectangle.
   */
  bool contains(Rectangle b);

  /* Determines whether or not the given Circle is contained within the
   *  rectangle.
   * Returns: true when Circle b is within or touching the bounds of the
   *  rectangle.
   */
  bool contains(Circle b);

  /* Determines whether or not the given Line is contained within the
   *  rectangle.
   * Returns: true when Line b is within or touching the bounds of the
   *  rectangle.
   */
  bool contains(Line b);

  /* Determines whether or not the given Point is inside this rectangle.
   * Returns: true when Point b is within or touching the bounds of the
   *  rectangle.
   */
  bool contains(Point b);

  /* Computes the shape that would result from the given Line being
   *  clipped by this rectangle.
   * Returns: The number of intersection points.
   */
  int clip(Line b, Point[2] points);

  /* Computes the shape that would result from the given Rectangle being
   *  clipped by this rectangle.
   * Returns: The number of intersection points.
   */
  int clip(Rectangle b, Point[4] points);

  /* Computes the shape that would result from the given Circle being
   *  clipped by this rectangle.
   * Returns: The number of intersection points.
   */
  int clip(Circle b, Point[4] points);
}
