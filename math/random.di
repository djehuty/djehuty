/*
This class provides a uniformly distributed random number generator.
*/
class Random {
public:
	/*
	This contructor produces a new generator with a unique seed.
	*/
	this();

	/*
	This contructor produces a new generator with a specific
	  seed. A single seed will produce reproducible output.
	seed: A seed to start this generator.
	*/
	this(uint seed);

	// Properties //

	/*
	This property will report the seed value.
	*/
	uint seed();

	// Methods //

	/*
	This function will return the next random integer in the
	  sequence.
	Returns: A random integer.
	*/
	uint next();

	/*
	This function will return the next random integer in the sequence from 0,
	  inclusive, until max, exclusive.
	max: An upper bound to the integer that is returned.
	Returns: A random integer [0, max)
	*/
	uint next(uint max);

	/*
	This function will return the next random integer in the
	  sequence from min, inclusive, until max, exclusive.
	min: A lower bound to the returned integer.
	max: An upper bound to the returned integer.
	Returns: A random integer [min, max)
	*/
	int next(int min, int max);

	/*
	This function will return the next random long in the sequence.
	Returns: A random long.
	*/
	ulong nextLong();

	/*
	This function will return the next random long in the sequence from 0,
	  inclusive, until max, exclusive.
	max: An upper bound to the long that is returned.
	Returns: A random long [0, max)
	*/
	ulong nextLong(ulong max);

	/*
	This function will return the next random long in the sequence from min,
	  inclusive, until max, exclusive.
	min: A lower bound to the returned long.
	max: An upper bound to the returned long.
	Returns: A random long [min, max)
	*/
	long nextLong(long min, long max);

	/*
	This function will randomly return true or false.
	Returns: A random boolean value.
	*/
	bool nextBoolean();

	/*
	This function will return the next float in the sequence.
	Returns: A random float.
	*/
	float nextFloat();

	/*
	This function will return the next double in the sequence.
	Returns: A random double.
	*/
	double nextDouble();
}