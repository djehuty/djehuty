module math.vector;

/* A mathematical vector that stores arbitrary pointers
 *
 */
final class Vector {
public:
	this();
	this(ulong size);
	this(void* values...);

	// Properties //
	ulong length();

	// Methods //
	double dotProduct(Vector b);
	long dotProducti(Vector b);

  Vector crossProduct(Vector b);
}

/* A mathematical vector that stores floating point values
 *
 */
final class VectorDouble {
public:
  this(double[] values...);

  // Properties //
  ulong length();

  // Methods //
  double dotProduct(VectorDouble b);

  VectorDouble crossProduct3d(VectorDouble b);
  VectorDouble crossProduct3d(VectorLong b);
}


/* A mathematical vector that stores integer values
 *
 */
final class VectorLong {
public:
  this(long[] values...);

  // Properties //

  /* Returns the number of components in the vector.
   * Returns: A value representing the number of components in the vector.
   *
   */
  ulong length();

  // Methods //

  /* Computes the dot product (inner product) of two vectors.
   * Returns: The resulting scalar value representing the computation.
   * 
   */
  double dotProduct(VectorLong b);
	long dotProducti(VectorLong b);

  /* Computes the cross product (outer product) of two vectors.
   * Returns: A new vector containing the result.
   *
   */
  VectorDouble crossProduct3d(VectorDouble b);
  VectorDouble crossProduct3d(VectorLong b);
  VectorLong crossProduct3di(VectorLong b);
}
