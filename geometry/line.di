module geometry.line;

import geometry.rectangle;
import geometry.circle;
import geometry.point;

/* Represents a line segment in two-dimensional space represented by two end
 * points.
 */
final class Line {
  /* This contructs a line of zero magnitude that begins and ends at the origin.
   */
  this();

  /* This constructs a line that begins at the given Point and ends at the
   *  given Point.
   * a: The start point.
   * b: The end point.
   */
  this(Point a, Point b);

  /* This constructs a line that begins and ends at the given points.
   * points: The first element gives the start point and the last element gives
   *  the end point.
   */
  this(Point[2] points);

  // Properties //

  /* The starting point for the line.
   */
  Point start();

  /* The ending point for the line.
   */
  Point end();

  /* The set of points that define the line.
   */
  Point[] points();

  // Methods //

  /* Computes the length of the line.
   * Returns: The length of the line.
   */
  double magnitude();

  /* Determines whether or not the given point is on this line.
   * b: The point to use.
   * Returns: true when the point is at the endpoints or is on the line.
   */
  bool intercepts(Point b);
}
