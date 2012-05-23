module math.fixed;

/*
This class provides a fixed point arithmetic type.
*/
class Fixed {
public:
	/*
	This constructor creates a new fixed point number initialized to the
	  given values.
	whole: The whole number component.
	scale: The degree that number is divided by 10.
	*/
	this(long whole, long scale);

	/*
	This constructor creates a new fixed point number that represents the
	  value given by the input. The constructed class will initially inherit
	  the precision of the value as it is represented by the input.
	*/
	this(double value);

	// Properties //

	// Methods //

	/*
	This function returns the result of adding the current value with that
	  given by the input.
	value: A fixed point number to serve as second operand to the
	  operation.
	*/
	Fixed add(Fixed value);

	/*
	This function returns the result of subtracting the current value with
	  that given by the input.
	value: A fixed point number to serve as second operand to the
	  operation.
	*/
	Fixed subtract(Fixed value);

	/*
	This function returns the result of multiplying the current value with
	  that given by the input.
	value: A fixed point number to serve as second operand to the
	  operation.
	*/
	Fixed multiply(Fixed value);

	/*
	This function returns the result of dividing the current value with
	  that given by the input.
	value: A fixed point number to serve as second operand to the
	  operation.
	*/
	Fixed divide(Fixed value);

	/*
	This function returns the result of complementing the current value. A
	  complement is where the bits of the value are flipped.
	*/
	Fixed complement();

	/*
	This function returns the result of negating current value. The negative
	  of a value of 'i' is the result of '-i'.
	*/
	Fixed negate();

	/*
	This function mutates the current integer to reflect adding the current
	  value with that given by the input.
	value: A fixed point number to serve as second operand to the
	  operation.
	*/
	void addAssign(Fixed value);

	/*
	This function mutates the current integer to reflect subtracting the
	  current value with that given by the input.
	value: A fixed point number to serve as second operand to the
	  operation.
	*/
	void subtractAssign(Fixed value);

	/*
	This function mutates the current integer to reflect multiplying the
	  current value with that given by the input.
	value: A fixed point number to serve as second operand to the
	  operation.
	*/
	void multiplyAssign(Fixed value);

	/*
	This function mutates the current integer to reflect dividing the
	  current value with that given by the input.
	value: A fixed point number to serve as second operand to the
	  operation.
	*/
	void divideAssign(Fixed value);

	/*
	This function mutates the current fixed point to reflect complementing the
	  current value. A complement is where the bits of the value are flipped.
	*/
	void complementAssign();

	/*
	This function mutates the current fixed point to reflect negating the
	  current value. The negative of a value of 'i' is the result of '-i'.
	*/
	void negateAssign();

	/*
	This function returns a human legible string of the fixed point number.
	*/
	char[] toString();
}
