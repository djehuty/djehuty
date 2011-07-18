/*
This class provides common mathematical functions.
*/
class Math {
static:
public:

	// Methods //

	/*
	This function returns the absolute value of the given input.
	x: A valid numeric imput that has a valid absolute value as a result.
	Returns: The absolute value of x.
	*/
	int abs(int x);
	float abs(float x);
	double abs(double x);

	/*
	This function will raise the input x to the power of y.
	x: A valid numeric base.
	y: A valid numeric power.
	Returns: x raised to the y power.
	*/
	float pow(float x, float y);
	double pow(double x, double y);

	/*
	This function will find the square root of the given input.
	x: A valid numeric base that has a valid square root.
	Returns: The square root of x.
	*/
	int sqrt(int x);
	float sqrt(float x);
	double sqrt(double x);

	/*
	This class provides common trignometric mathematical functions.
	*/
	class Trig {
	static:
	public:

		/*
		This function returns the sine of the given value.
		x: The degrees in radians.
		Returns: sin(x)
		*/
		float sin(float x);
		double sin(double x);

		/*
		This function returns the cosine of the given value.
		x: The degrees in radians.
		Returns: cos(x)
		*/
		float cos(float x);
		double cos(double x);

		/*
		This function returns the tangent of the given value.
		x: The degrees in radians.
		Returns: tan(x)
		*/
		float tan(float x);
		double tan(double x);
	}

	/*
	This class provides common logarithmic mathematical functions.
	*/
	class Log {
	static:
	public:

		/*
		This function returns the logarithm of the given input with a base of 10.
		x: A valid numeric input.
		Returns: log_10(x)
		*/
		double base10(double x);

		/*
		This function returns the logarithm of the given input with a base of 2.
		x: A valid numeric input.
		Returns: log_2(x)
		*/
		double base2(double x);

		/*
		This function returns the natural logarithm of the given input with a base of e.
		x: A valid numeric input.
		Returns: ln(x)
		*/
		double baseE(double x);

		/*
		This function returns the logarithm of the given input with a given base.
		base: A valid numeric input.
		x: A valid numeric input.
		Returns: log_base(x)
		*/
		double baseX(double base, double x);

		/*
		This function returns the iterative logarithm of the given input with a given base.
		base: A valid numeric input.
		x: A valid numeric input.
		Returns: log_base*(x)
		*/
		double baseXStar(double base, double x);

		/*
		This function returns the iterative logarithm of the given input with a base 10.
		base: A valid numeric input.
		x: A valid numeric input.
		Returns: log_10*(x)
		*/
		double base10Star(double base, double x);
	}

	/*
	This function returns the nearest whole number to the given input by rounding from 0.5 up.
	x: A valid numeric input
	Returns: The nearest integer to x.
	*/
	int nearest(int x);
	float nearest(float x);
	double nearest(double x);

	/*
	This function returns the ceiling of the given input by rounding up to the next whole number.
	x: A valid numeric input
	Returns: x rounded up to the next whole number.
	*/
	int ceiling(int x);
	float ceiling(float x);
	double ceiling(double x);

	/*
	This function returns the floor of the given input by rounding down to the next whole number.
	x: A valid numeric input
	Returns: x rounded down to the next whole number.
	*/
	int floor(int x);
	float floor(float x);
	double floor(double x);

	/*
	This function returns a random integer.
	*/
	int nextInt();

	/*
	This function returns a random float.
	*/
	float nextFloat();

	/*
	This function returns a random double.
	*/
	double nextDouble();
}